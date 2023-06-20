module apps.cms.controllers.actions.tutorials.update;

import apps.cms;
@safe:

class DCMSTutorialsUpdateActionController : DCMSUpdateActionController {
  mixin(ControllerThis!("CMSTutorialsUpdateActionController"));



  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsUpdateActionController~":DCMSTutorialsUpdateActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  }   
}
mixin(ControllerCalls!("CMSTutorialsUpdateActionController", "DCMSTutorialsUpdateActionController"));
