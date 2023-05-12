module apps.cms.controllers.actions.tutorials.delete_;

import apps.cms;
@safe:

class DCMSTutorialsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSTutorialsDeleteActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsDeleteActionController~":DCMSTutorialsDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSTutorialsDeleteActionController", "DCMSTutorialsDeleteActionController"));
