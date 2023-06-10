module apps.cms.views.components.forms.posts.docus;

import apps.cms;
@safe:

class DCMSXDocuForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXDocuForm"));
}
mixin(ViewComponentCalls!("CMSXDocuForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
