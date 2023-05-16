module apps.cms.controllers.pages.themes.index;

import apps.cms;
@safe:

class DCMSThemesIndexPageController : DAPPPageController {
  mixin(ControllerThis!("CMSThemesIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesIndexPageController~":DCMSThemesIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }   
}
mixin(ControllerCalls!("CMSThemesIndexPageController", "DCMSThemesIndexPageController"));
