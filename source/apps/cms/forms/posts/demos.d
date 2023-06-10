module apps.cms.views.components.forms.posts.demos;

import apps.cms;
@safe:

class DCMSDemoForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSDemoForm"));
}
mixin(ViewComponentCalls!("CMSDemoForm"));

version(test_uim_cms) { unittest {
    // TODO
}}
