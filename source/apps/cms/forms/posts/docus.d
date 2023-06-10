module apps.cms.views.components.forms.posts.docus;

import apps.cms;
@safe:

class DCMSDocuForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSDocuForm"));
}
mixin(ViewComponentCalls!("CMSDocuForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
