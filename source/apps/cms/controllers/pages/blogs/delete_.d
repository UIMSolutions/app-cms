module apps.cms.controllers.pages.blogs.delete_;

@safe:
import apps.cms;

class DCMSBlogsDeletePageController : DPageController {
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
