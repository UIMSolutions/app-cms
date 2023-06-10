module uim.cms.views.components.forms.contents.docu;

import uim.cms;
@safe:

class DCMSXDocuFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXDocuFormContent"));
}
mixin(ViewComponentCalls!("CMSXDocuFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXDocuFormContent(myForm));
}}