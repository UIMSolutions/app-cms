module apps.cms.views.components.forms.form;

@safe:
import apps.cms;

class DCMSFormViewComponent : DViewComponent {
  mixin(ViewComponentThis!("CMSFormViewComponent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);     
  }
}
mixin(ViewComponentCalls!("CMSFormViewComponent", "DCMSFormViewComponent"));
mixin(ViewComponentCalls!("CMSForm", "DCMSFormViewComponent"));
