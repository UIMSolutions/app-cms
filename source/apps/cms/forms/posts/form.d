module apps.cms.views.components.forms.posts.form;

import apps.cms;
@safe:

class DCMSXPostForm : DCMSXForm {
  mixin(ViewComponentThis!("CMSXPostForm"));

  override void initialize(Json configSettings = Json(null)) {
    version(test_uim_mvc) { debugMethodCall(moduleName!DCMSXPostForm~"::DCMSXPostForm("~this.className~"):initialize"); }
    super.initialize(configSettings);
    
/*     this
      .content(
        CMSXPostFormContent(this)); */
  }

  mixin(OProperty!("DEntity[]", "themes"));
}
mixin(ViewComponentCalls!("CMSXPostForm"));

version(test_uim_cms) { unittest {
    // TODO
}}