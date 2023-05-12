module apps.cms.controllers.pages.blogs.edit;

@safe:
import apps.cms;

class DCMSBlogsEditPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsEditView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsEditPageController~":DCMSBlogsEditPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsEditPageController", "DCMSBlogsEditPageController"));
