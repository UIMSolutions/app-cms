module apps.cms.controllers.actions.blogs.create;

@safe:
import apps.cms;

class DCMSBlogsCreateActionController : DCMSCreateActionController {
  mixin(ControllerThis!("CMSBlogsCreateActionController"));



  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsCreateActionController~":DCMSBlogsCreateActionController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsCreateActionController", "DCMSBlogsCreateActionController"));
