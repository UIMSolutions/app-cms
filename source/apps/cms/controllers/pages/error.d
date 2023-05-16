module apps.cms.controllers.pages.error;

import apps.cms;
@safe:

class DCMSErrorPageController : DAPPPageController {
  mixin(ControllerThis!("CMSErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSErrorView(this));
  }
}
mixin(ControllerCalls!("CMSErrorPageController", "DCMSErrorPageController"));
