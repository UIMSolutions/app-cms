module apps.cms.views.components.forms.inputs.summary;

import apps.cms;
@safe:

class DCMSXSummaryFormInput : DTextAreaFormInput {
  mixin(ViewComponentThis!("CMSXSummaryFormInput"));

  override void initialize(Json configSettings = Json(null)) {
    version(test_uim_mvc) { debugMethodCall(moduleName!DCMSXSummaryFormInput~"::DCMSXSummaryFormInput("~this.className~"):initialize"); }
    super.initialize(configSettings);

    this
    .id("entity_summary")
    .name("entity_summary")
    .inputName("entity_summary")
    .fieldName("summary")
    .label("Zusammenfassung");  
  }
}
mixin(ViewComponentCalls!("CMSXSummaryFormInput"));

version(test_uim_cms) { unittest {
    // TODO Tests
}}
