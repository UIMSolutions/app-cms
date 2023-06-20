module apps.cms.controllers.actions.create;

import apps.cms;
@safe:

class DCMSCreateActionController : DActionController {
  mixin(ControllerThis!("CMSCreateActionController"));
  
  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSCreateActionController~":DCMSCreateActionController::beforeResponse");    
    if (!super.beforeResponse(options) || hasError || "redirect" in options) { return false; }    

    auto mySession = sessionManager.session(options);
    debug writeln("In DCMSCreateActionController: mySession "~mySession.id.toString);
    if (mySession.isNull) return false;

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

    return true;
  }
}
mixin(ControllerCalls!("CMSCreateActionController", "DCMSCreateActionController"));
