module apps.cms.views.components.forms.form;

import apps.cms;
@safe:

class DCMSXForm : DForm {
  mixin(ViewComponentThis!("CMSXForm"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

/*     this
      .content(
        CMSXFormContent(this)); */
  }
}
mixin(ViewComponentCalls!("CMSXForm"));

