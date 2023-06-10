module apps.cms.views.components.forms.posts.demos;

import apps.cms;
@safe:

class DCMSXDemoForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXDemoForm"));
}
mixin(ViewComponentCalls!("CMSXDemoForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
