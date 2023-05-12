module apps.cms.controllers.pages.themes.edit;

import apps.cms;
@safe:

class DCMSThemesEditPageController : DPageController {
  mixin(ControllerThis!("CMSThemesEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesEditView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesEditPageController~":DCMSThemesEditPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSThemesEditPageController", "DCMSThemesEditPageController"));
