module apps.cms.views.components.forms.posts.links;

import apps.cms;
@safe:

class DCMSLinkForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSLinkForm"));
}
mixin(ViewComponentCalls!("CMSLinkForm"));

version(test_uim_cms) { unittest {
    // TODO
}}