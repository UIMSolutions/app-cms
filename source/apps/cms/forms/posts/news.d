module apps.cms.views.components.forms.posts.news;

import apps.cms;
@safe:

class DCMSNewsItemForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSNewsItemForm"));
}
mixin(ViewComponentCalls!("CMSNewsItemForm"));

version(test_uim_cms) { unittest {
    // TODO
}}