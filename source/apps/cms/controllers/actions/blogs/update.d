module apps.cms.controllers.actions.blogs.update;

import apps.cms;
@safe:

class DCMSBlogsUpdateActionController : DCMSUpdateActionController {
  mixin(ControllerThis!("CMSBlogsUpdateActionController"));

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsUpdateActionController~":DCMSBlogsUpdateActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  }   
}
mixin(ControllerCalls!("CMSBlogsUpdateActionController", "DCMSBlogsUpdateActionController"));
