module apps.cms.controllers.actions.news.update;

@safe:
import apps.cms;

class DCMSNewsUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSNewsUpdateActionController"));
}
mixin(ControllerCalls!("CMSNewsUpdateActionController", "DCMSNewsUpdateActionController"));
