module uim.cms.views.components.forms.contents.glossary;

import uim.cms;
@safe:

class DCMSXGlossaryItemFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXGlossaryItemFormContent"));
}
mixin(ViewComponentCalls!("CMSXGlossaryItemFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXGlossaryItemFormContent(myForm));
}}