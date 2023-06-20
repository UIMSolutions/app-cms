module apps.cms.controllers.actions.blogs.delete_;

import apps.cms;
@safe:

class DCMSBlogsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSBlogsDeleteActionController"));



  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsDeleteActionController~":DCMSBlogsDeleteActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsDeleteActionController", "DCMSBlogsDeleteActionController"));
