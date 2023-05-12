module apps.cms.controllers.actions.themes.create;

@safe:
import apps.cms;

class DCMSThemesCreateActionController : DActionController {
  mixin(ControllerThis!("CMSThemesCreateActionController"));
}
mixin(ControllerCalls!("CMSThemesCreateActionController", "DCMSThemesCreateActionController"));
