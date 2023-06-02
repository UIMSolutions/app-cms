module apps.cms.controllers.actions.update;

import apps.cms;
@safe:

class DCMSUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSUpdateActionController"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSUpdateActionController~":DCMSUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }     

    auto appSession = getAppSession(options);
    debug writeln("In DCMSUpdateActionController: appSession "~(appSession ? appSession.id : null));
    if (auto tenant = database[appSession.site]) {
      debug writeln("In DCMSUpdateActionController: tenant "/* ~tenant.name */);

      if (auto collection = tenant[collectionName]) {
        debug writeln("In DCMSUpdateActionController: collection "~collectionName);

        if (auto entityId = options.get("entity_id", null)) {
          debug writeln("found entityId "~entityId);
       
          if (auto entity = collection.findOne(UUID(entityId))) {        
            entity.readFromRequest(options);
            collection.updateOne(entity);
            options["redirect"] = rootPath~"/view?id="~entityId;
          }
        }
      }
    }
	}  
}
mixin(ControllerCalls!("CMSUpdateActionController", "DCMSUpdateActionController"));
