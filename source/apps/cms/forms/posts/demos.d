module uim.cms.views.components.forms.posts.demos;

import uim.cms;
@safe:

class DCMSXDemoForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXDemoForm"));
}
mixin(ViewComponentCalls!("CMSXDemoForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
