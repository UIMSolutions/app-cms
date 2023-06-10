module uim.cms.views.components.forms.posts.news;

import uim.cms;
@safe:

class DCMSXNewsItemForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXNewsItemForm"));
}
mixin(ViewComponentCalls!("CMSXNewsItemForm"));

version(test_uim_cms) { unittest {
    // TODO
}}