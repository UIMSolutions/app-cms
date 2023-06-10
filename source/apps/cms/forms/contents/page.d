module apps.cms.views.components.forms.contents.page;

import apps.cms;
@safe:

class DCMSXPageFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXPageFormContent"));
}
mixin(ViewComponentCalls!("CMSXPageFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXPageFormContent(myForm));
}}
