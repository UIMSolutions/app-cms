module apps.cms.controllers.actions.update;

@safe:
import apps.cms;

class DCMSUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSUpdateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSUpdateActionController~":DCMSUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSUpdateActionController", "DCMSUpdateActionController"));
