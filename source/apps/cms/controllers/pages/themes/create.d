module apps.cms.controllers.pages.themes.create;

import apps.cms;
@safe:

class DCMSThemesCreatePageController : DAPPPageController {
  mixin(ControllerThis!("CMSThemesCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesCreateView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesCreatePageController~":DCMSThemesCreatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }
}
mixin(ControllerCalls!("CMSThemesCreatePageController", "DCMSThemesCreatePageController"));
