module uim.cms.views.components.forms.posts.docus;

import uim.cms;
@safe:

class DCMSXDocuForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXDocuForm"));
}
mixin(ViewComponentCalls!("CMSXDocuForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
