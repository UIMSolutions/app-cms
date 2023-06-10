module uim.cms.views.components.forms.contents.demo;

import uim.cms;
@safe:

class DCMSXDemoFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXDemoFormContent"));
}
mixin(ViewComponentCalls!("CMSXDemoFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXDemoFormContent(myForm));
}}