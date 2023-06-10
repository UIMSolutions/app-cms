module uim.cms.views.components.forms.inputs.subtitle;

import uim.cms;
@safe:

class DCMSXSubTitleFormInput : DTextFormInput {
  mixin(ViewComponentThis!("CMSXSubTitleFormInput"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .id("entity_subTitle")
    .name("entity_subTitle")
    .inputName("entity_subTitle")
    .fieldName("subTitle")
    .label("Untertitle"); 
  }
}
mixin(ViewComponentCalls!("CMSXSubTitleFormInput"));

version(test_uim_cms) { unittest {
    // TODO Tests
}}

