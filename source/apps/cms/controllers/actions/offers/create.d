module apps.cms.controllers.actions.offers.create;

@safe:
import apps.cms;

class DCMSOffersCreateActionController : DActionController {
  mixin(ControllerThis!("CMSOffersCreateActionController"));
}
mixin(ControllerCalls!("CMSOffersCreateActionController", "DCMSOffersCreateActionController"));
