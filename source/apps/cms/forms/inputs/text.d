module uim.cms.views.components.forms.inputs.text;

import uim.cms;
@safe:

class DCMSXTextFormInput : DTextAreaFormInput {
  mixin(ViewComponentThis!("CMSXTextFormInput"));

  override void initialize(Json configSettings = Json(null)) {
    version(test_uim_mvc) { debugMethodCall(moduleName!DCMSXTextFormInput~"::DCMSXTextFormInput("~this.className~"):initialize"); }
    super.initialize(configSettings);

    this
    .id("entity_text")
    .name("entity_text")
    .inputName("entity_text")
    .fieldName("text")
    .label("Inhalt");
  }
}
mixin(ViewComponentCalls!("CMSXTextFormInput"));

version(test_uim_cms) { unittest {
    assert(CMSXTextFormInput);
}}
