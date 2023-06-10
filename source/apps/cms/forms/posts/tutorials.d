module apps.cms.views.components.forms.posts.tutorials;

import apps.cms;
@safe:

class DCMSXTutorialForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXTutorialForm"));
}
mixin(ViewComponentCalls!("CMSXTutorialForm"));

