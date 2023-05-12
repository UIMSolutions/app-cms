module apps.cms.controllers.pages.news.create;

import apps.cms;
@safe:

class DCMSNewsCreatePageController : DPageController {
  mixin(ControllerThis!("CMSNewsCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsCreateView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsCreatePageController~":DCMSNewsCreatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSNewsCreatePageController", "DCMSNewsCreatePageController"));
