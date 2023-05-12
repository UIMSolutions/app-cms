module apps.cms.controllers.actions.offers.update;

@safe:
import apps.cms;

class DCMSOffersUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSOffersUpdateActionController"));
}
mixin(ControllerCalls!("CMSOffersUpdateActionController", "DCMSOffersUpdateActionController"));
