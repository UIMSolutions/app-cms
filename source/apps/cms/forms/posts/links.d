module uim.cms.views.components.forms.posts.links;

import uim.cms;
@safe:

class DCMSXLinkForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXLinkForm"));
}
mixin(ViewComponentCalls!("CMSXLinkForm"));

version(test_uim_cms) { unittest {
    // TODO
}}