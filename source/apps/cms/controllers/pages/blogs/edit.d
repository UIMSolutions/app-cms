module apps.cms.controllers.pages.blogs.edit;

import apps.cms;
@safe:

class DCMSBlogsEditPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsUpdateView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsEditPageController~":DCMSBlogsEditPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsEditPageController"));
