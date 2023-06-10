module uim.cms.views.components.forms.contents.link;

import uim.cms;
@safe:

class DCMSXLinkFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXLinkFormContent"));
}
mixin(ViewComponentCalls!("CMSXLinkFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXLinkFormContent(myForm));
}}
