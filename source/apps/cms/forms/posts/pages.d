module uim.cms.views.components.forms.posts.pages;

import uim.cms;
@safe:

class DCMSXPageForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXPageForm"));
}
mixin(ViewComponentCalls!("CMSXPageForm"));

