module apps.cms.views.components.forms.inputs.mainTitle;

import apps.cms;
@safe:

class DCMSXMainTitleFormInput : DTextFormInput {
  mixin(ViewComponentThis!("CMSXMainTitleFormInput"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .id("entity_mainTitle")
    .name("entity_mainTitle")
    .inputName("entity_mainTitle")
    .fieldName("mainTitle")
    .label("Überschrift"); 
  }
}
mixin(ViewComponentCalls!("CMSXMainTitleFormInput"));

version(test_uim_cms) { unittest {
    // TODO Tests
}}