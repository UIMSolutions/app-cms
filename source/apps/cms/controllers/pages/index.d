module apps.cms.controllers.pages.index;

@safe:
import apps.cms;

class DCMSIndexPageController : DPageController {
  mixin(ControllerThis!("CMSIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSIndexView(this));
  }
}
mixin(ControllerCalls!("CMSIndexPageController", "DCMSIndexPageController"));
