module apps.cms.controllers.pages.themes.index;

import apps.cms;
@safe:

class DCMSThemesIndexPageController : DPageController {
  mixin(ControllerThis!("CMSThemesIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesIndexView(this));
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesIndexPageController~":DCMSThemesIndexPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  }   
}
mixin(ControllerCalls!("CMSThemesIndexPageController", "DCMSThemesIndexPageController"));
