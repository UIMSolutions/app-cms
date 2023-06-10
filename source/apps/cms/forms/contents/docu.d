module apps.cms.views.components.forms.contents.docu;

import apps.cms;
@safe:

class DCMSDocuFormContent : DCMSPostFormContent {
  mixin(ViewComponentThis!("CMSDocuFormContent"));
}
mixin(ViewComponentCalls!("CMSDocuFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSDocuFormContent(myForm));
}}