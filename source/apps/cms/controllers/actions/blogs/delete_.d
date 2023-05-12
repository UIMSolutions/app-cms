module apps.cms.controllers.actions.blogs.delete_;

import apps.cms;
@safe:

class DCMSBlogsDeleteActionController : DCMSDeleteActionController {
  mixin(ControllerThis!("CMSBlogsDeleteActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsDeleteActionController~":DCMSBlogsDeleteActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsDeleteActionController", "DCMSBlogsDeleteActionController"));
