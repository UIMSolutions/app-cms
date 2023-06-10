module apps.cms.views.components.forms.posts.links;

import apps.cms;
@safe:

class DCMSXLinkForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXLinkForm"));
}
mixin(ViewComponentCalls!("CMSXLinkForm"));

version(test_uim_cms) { unittest {
    // TODO
}}