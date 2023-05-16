module apps.cms.controllers.pages.blogs.delete_;

import apps.cms;
@safe:

class DCMSBlogsDeletePageController : DAPPPageController {
  mixin(ControllerThis!("CMSBlogsDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsDeleteView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsDeletePageController~":DCMSBlogsDeletePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsDeletePageController", "DCMSBlogsDeletePageController"));
