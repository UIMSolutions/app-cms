module apps.cms.controllers.actions.tutorials.delete_;

@safe:
import apps.cms;

class DCMSTutorialsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSTutorialsDeleteActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsDeleteActionController~":DCMSTutorialsDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSTutorialsDeleteActionController", "DCMSTutorialsDeleteActionController"));
