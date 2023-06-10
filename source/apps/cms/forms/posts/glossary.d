module uim.cms.views.components.forms.posts.glossary;

import uim.cms;
@safe:

class DCMSXGlossaryItemForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXGlossaryItemForm"));
}
mixin(ViewComponentCalls!("CMSXGlossaryItemForm"));

version(test_uim_cms) { unittest {
    // TODO
}}