module apps.cms.controllers.actions.tutorials.create;

import apps.cms;
@safe:

class DCMSTutorialsCreateActionController : DCMSCreateActionController {
  mixin(ControllerThis!("CMSTutorialsCreateActionController"));



  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSTutorialsCreateActionController~":DCMSTutorialsCreateActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSTutorialsCreateActionController", "DCMSTutorialsCreateActionController"));
