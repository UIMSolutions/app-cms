module apps.cms.views.components.forms.posts.pages;

import apps.cms;
@safe:

class DCMSXPageForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXPageForm"));
}
mixin(ViewComponentCalls!("CMSXPageForm"));

