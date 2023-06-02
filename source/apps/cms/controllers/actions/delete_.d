module apps.cms.controllers.actions.delete_;

import apps.cms;
@safe:

class DCMSDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSDeleteActionController"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSDeleteActionController~":DCMSDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }    

    auto appSession = getAppSession(options);
    debug writeln("In DCMSDeleteActionController: appSession "~(appSession ? appSession.id : null));
    if (auto tenant = databases[appSession.site]) {
      debug writeln("In DCMSDeleteActionController: tenant "/* ~tenant.name */);

      if (auto collection = tenant[collectionName]) {
        debug writeln("In DCMSDeleteActionController: collection "~collectionName);

        if (auto entity = collection.createFromTemplate) {
          entity.readFromRequest(options);   
          debug writeln("In DCMSDeleteActionController: entity "~entity.name);

          collection.removeOne(entity);
        }

        options["redirect"] = rootPath;
      }  
    }
	} 
}
mixin(ControllerCalls!("CMSDeleteActionController", "DCMSDeleteActionController"));
