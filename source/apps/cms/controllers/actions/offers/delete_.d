module apps.cms.controllers.actions.offers.delete_;

@safe:
import apps.cms;

class DCMSOffersDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSOffersDeleteActionController"));
}
mixin(ControllerCalls!("CMSOffersDeleteActionController", "DCMSOffersDeleteActionController"));
