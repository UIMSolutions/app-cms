module apps.cms.controllers.pages.themes.edit;

import apps.cms;
@safe:

class DCMSThemesEditPageController : DPageController {
  mixin(ControllerThis!("CMSThemesEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesUpdateView(this));
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesEditPageController~":DCMSThemesEditPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSThemesEditPageController"));
