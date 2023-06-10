module apps.cms.views.components.forms.contents.glossary;

import apps.cms;
@safe:

class DCMSGlossaryItemFormContent : DCMSPostFormContent {
  mixin(ViewComponentThis!("CMSGlossaryItemFormContent"));
}
mixin(ViewComponentCalls!("CMSGlossaryItemFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSGlossaryItemFormContent(myForm));
}}