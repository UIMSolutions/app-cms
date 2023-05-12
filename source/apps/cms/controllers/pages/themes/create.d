module apps.cms.controllers.pages.themes.create;

@safe:
import apps.cms;

class DCMSThemesCreatePageController : DPageController {
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
