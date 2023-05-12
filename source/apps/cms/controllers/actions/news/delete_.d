module apps.cms.controllers.actions.news.delete_;

@safe:
import apps.cms;

class DCMSNewsDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSNewsDeleteActionController"));
}
mixin(ControllerCalls!("CMSNewsDeleteActionController", "DCMSNewsDeleteActionController"));
