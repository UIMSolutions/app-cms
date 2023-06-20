module apps.cms.controllers.actions.create;

import apps.cms;
@safe:

class DCMSCreateActionController : DActionController {
  mixin(ControllerThis!("CMSCreateActionController"));
  
  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSCreateActionController~":DCMSCreateActionController::beforeResponse");    
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }    

    auto mySession = sessionManager.session(options);
    debug writeln("In DCMSCreateActionController: mySession "~mySession.id.toString);
    if (mySession.isNull) return;

    if (auto tenant = database[mySession.site]) {
      debug writeln("In DCMSCreateActionController: tenant "/* ~tenant.name */);

      if (auto collection = tenant[collectionName]) {
        debug writeln("In DCMSCreateActionController: collection "~collectionName);

        if (auto entity = collection.createFromTemplate) {
          debug writeln("In DCMSCreateActionController: entity "~entity.name);
          entity.readFromRequest(options);   

          collection.insertOne(entity);
          debug writeln("entity.id = ", entity.id);
          options["redirect"] = this.rootPath ~ "/view?id="~entity.id.toString; 
        }  
      }
    }
  }
}
mixin(ControllerCalls!("CMSCreateActionController", "DCMSCreateActionController"));
