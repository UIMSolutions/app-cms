module apps.cms.controllers.pages.blogs.read;

import apps.cms;
@safe:

class DCMSBlogsReadPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsReadView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsReadPageController~":DCMSBlogsReadPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsReadPageController", "DCMSBlogsReadPageController"));
