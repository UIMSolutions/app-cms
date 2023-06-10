module apps.cms.views.components.forms.contents.demo;

import apps.cms;
@safe:

class DCMSXDemoFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXDemoFormContent"));
}
mixin(ViewComponentCalls!("CMSXDemoFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXDemoFormContent(myForm));
}}