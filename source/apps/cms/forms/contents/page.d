module uim.cms.views.components.forms.contents.page;

import uim.cms;
@safe:

class DCMSXPageFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXPageFormContent"));
}
mixin(ViewComponentCalls!("CMSXPageFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXPageFormContent(myForm));
}}
