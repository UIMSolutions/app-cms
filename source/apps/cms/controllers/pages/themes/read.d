module apps.cms.controllers.pages.themes.read;

import apps.cms;
@safe:

class DCMSThemesReadPageController : DPageController {
  mixin(ControllerThis!("CMSThemesReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesReadView(this));
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesReadPageController~":DCMSThemesReadPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSThemesReadPageController"));
