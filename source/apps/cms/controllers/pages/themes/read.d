module apps.cms.controllers.pages.themes.read;

@safe:
import apps.cms;

class DCMSThemesReadPageController : DPageController {
  mixin(ControllerThis!("CMSThemesReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesReadView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesReadPageController~":DCMSThemesReadPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSThemesReadPageController", "DCMSThemesReadPageController"));
