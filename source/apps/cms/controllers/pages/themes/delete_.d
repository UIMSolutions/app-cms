module apps.cms.controllers.pages.themes.delete_;

import apps.cms;
@safe:

class DCMSThemesDeletePageController : DPageController {
  mixin(ControllerThis!("CMSThemesDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesDeleteView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesDeletePageController~":DCMSThemesDeletePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }  
}
mixin(ControllerCalls!("CMSThemesDeletePageController", "DCMSThemesDeletePageController"));
