module apps.cms.views.components.forms.contents.demo;

import apps.cms;
@safe:

class DCMSDemoFormContent : DCMSPostFormContent {
  mixin(ViewComponentThis!("CMSDemoFormContent"));
}
mixin(ViewComponentCalls!("CMSDemoFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSDemoFormContent(myForm));
}}