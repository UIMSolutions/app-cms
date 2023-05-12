module apps.cms.controllers.actions.themes.update;

@safe:
import apps.cms;

class DCMSThemesUpdateActionController : DActionController {
  mixin(ControllerThis!("CMSThemesUpdateActionController"));
}
mixin(ControllerCalls!("CMSThemesUpdateActionController", "DCMSThemesUpdateActionController"));
