module apps.cms.controllers.pages.news.delete_;

import apps.cms;
@safe:

class DCMSNewsDeletePageController : DPageController {
  mixin(ControllerThis!("CMSNewsDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsDeleteView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsDeletePageController~":DCMSNewsDeletePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSNewsDeletePageController", "DCMSNewsDeletePageController"));
