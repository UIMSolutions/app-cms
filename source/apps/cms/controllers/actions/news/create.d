module apps.cms.controllers.actions.news.create;

@safe:
import apps.cms;

class DCMSNewsCreateActionController : DActionController {
  mixin(ControllerThis!("CMSNewsCreateActionController"));
}
mixin(ControllerCalls!("CMSNewsCreateActionController", "DCMSNewsCreateActionController"));
