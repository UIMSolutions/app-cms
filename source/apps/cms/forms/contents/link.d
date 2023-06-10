module apps.cms.views.components.forms.contents.link;

import apps.cms;
@safe:

class DCMSXLinkFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXLinkFormContent"));
}
mixin(ViewComponentCalls!("CMSXLinkFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXLinkFormContent(myForm));
}}
