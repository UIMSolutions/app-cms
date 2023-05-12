module apps.cms.controllers.pages.news.edit;

import apps.cms;
@safe:

class DCMSNewsEditPageController : DPageController {
  mixin(ControllerThis!("CMSNewsEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsEditView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsEditPageController~":DCMSNewsEditPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSNewsEditPageController", "DCMSNewsEditPageController"));
