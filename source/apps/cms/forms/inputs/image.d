module apps.cms.views.components.forms.inputs.image;

import apps.cms;
@safe:

class DCMSImageFormInput : DTextFormInput {
  mixin(ViewComponentThis!("CMSImageFormInput"));
  
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
mixin(ViewComponentCalls!("CMSImageFormInput"));

version(test_uim_cms) { unittest {
    // assert(CMSImageFormInput);
}}