module apps.cms.controllers.actions.tutorials.delete_;

import apps.cms;
@safe:

class DCMSTutorialsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSTutorialsDeleteActionController"));



  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsDeleteActionController~":DCMSTutorialsDeleteActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  }   
}
mixin(ControllerCalls!("CMSTutorialsDeleteActionController", "DCMSTutorialsDeleteActionController"));
