module apps.cms.controllers.pages.error;

@safe:
import apps.cms;

class DCMSErrorPageController : DPageController {
  mixin(ControllerThis!("CMSErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSErrorView(this));
  }
}
mixin(ControllerCalls!("CMSErrorPageController", "DCMSErrorPageController"));
