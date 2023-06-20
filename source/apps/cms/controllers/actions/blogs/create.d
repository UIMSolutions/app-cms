module apps.cms.controllers.actions.blogs.create;

import apps.cms;
@safe:

class DCMSBlogsCreateActionController : DCMSCreateActionController {
  mixin(ControllerThis!("CMSBlogsCreateActionController"));

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsCreateActionController~":DCMSBlogsCreateActionController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsCreateActionController", "DCMSBlogsCreateActionController"));
