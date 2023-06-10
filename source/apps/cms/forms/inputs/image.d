module apps.cms.views.components.forms.inputs.image;

import apps.cms;
@safe:

class DCMSXImageFormInput : DTextFormInput {
  mixin(ViewComponentThis!("CMSXImageFormInput"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .id("entity_imagepath")
    .name("entity_imagepath")
    .inputName("entity_imagepath")
    .fieldName("imagePath")
    .label("Titelbild"); 
  }
}
mixin(ViewComponentCalls!("CMSXImageFormInput"));

version(test_uim_cms) { unittest {
    // assert(CMSXImageFormInput);
}}