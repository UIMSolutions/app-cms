module apps.cms.controllers.actions.blogs.update;

import apps.cms;
@safe:

class DCMSBlogsUpdateActionController : DCMSUpdateActionController {
  mixin(ControllerThis!("CMSBlogsUpdateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsUpdateActionController~":DCMSBlogsUpdateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsUpdateActionController", "DCMSBlogsUpdateActionController"));
