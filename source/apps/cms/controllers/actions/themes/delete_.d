module apps.cms.controllers.actions.themes.delete_;

@safe:
import apps.cms;

class DCMSThemesDeleteActionController : DActionController {
  mixin(ControllerThis!("CMSThemesDeleteActionController"));
}
mixin(ControllerCalls!("CMSThemesDeleteActionController", "DCMSThemesDeleteActionController"));
