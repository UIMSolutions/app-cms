module uim.cms.views.components.forms.themes;

import uim.cms;
@safe:

class DCMSXThemeForm : DForm {
  mixin(ViewComponentThis!("CMSXThemeForm"));

  override void initialize(Json configSettings = Json(null)) {
    version(test_uim_mvc) { debugMethodCall(moduleName!DCMSXThemeForm~"::DCMSXThemeForm("~this.className~"):initialize"); }
    super.initialize(configSettings);
    
    this
      .content(
        CMSXThemeFormContent.form(this));
  }
}
mixin(ViewComponentCalls!("CMSXThemeForm"));

version(test_uim_cms) { unittest {
    // TODO
}}