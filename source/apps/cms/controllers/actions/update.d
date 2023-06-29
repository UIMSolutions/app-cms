module apps.cms.controllers.actions.update;

import apps.cms;
@safe:

class DCMSUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSUpdateActionController"));

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSUpdateActionController~":DCMSUpdateActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || "redirect" in options) { return false; }     

    auto mySession = manager.session(options);
    debug writeln("In DCMSUpdateActionController: mySession "~mySession.id.toString);
    if (mySession.isNull) return false;

    if (auto tenant = entityBase(mySession.site)) {
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

    return true;
	}  
}
mixin(ControllerCalls!("CMSUpdateActionController", "DCMSUpdateActionController"));
