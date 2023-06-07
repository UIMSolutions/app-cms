module apps.cms.views.components.forms.form;

import apps.cms;
@safe:

class DCMSForm : DForm {
  mixin(ViewComponentThis!("CMSForm"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);     
  }
}
mixin(ViewComponentCalls!("CMSForm"));
