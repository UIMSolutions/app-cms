module uim.cms.views.components.forms.inputs.private_;

import uim.cms;
@safe:

class DCMSXPrivateFormInput : DSwitchFormInput {
  mixin(ViewComponentThis!("CMSXPrivateFormInput"));  // not CMSXPrivateFormInput!
  this(DEntity myEntity) { this().entity(myEntity); }
  this(DForm myForm, DEntity myEntity) { /* .form(myForm) */this.entity(myEntity); }

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .id("entity_private")
    .inputName("entity_private")
    .fieldName("isPrivate")
    .label("Privat"); 
  }
}
mixin(ViewComponentCalls!("CMSXPrivateFormInput"));

version(test_uim_cms) { unittest {
    // TODO Tests
}}
