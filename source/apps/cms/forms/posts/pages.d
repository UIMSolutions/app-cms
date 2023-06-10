module apps.cms.views.components.forms.posts.pages;

import apps.cms;
@safe:

class DCMSPageForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSPageForm"));
}
mixin(ViewComponentCalls!("CMSPageForm"));

