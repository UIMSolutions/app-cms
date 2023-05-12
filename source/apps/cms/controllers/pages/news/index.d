module apps.cms.controllers.pages.news.index;

@safe:
import apps.cms;

class DCMSNewsIndexPageController : DPageController {
  mixin(ControllerThis!("CMSNewsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsIndexPageController~":DCMSNewsIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSNewsIndexPageController", "DCMSNewsIndexPageController"));
