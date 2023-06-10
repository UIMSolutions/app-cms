module apps.cms.views.components.forms.posts.tutorials;

import apps.cms;
@safe:

class DCMSTutorialForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSTutorialForm"));
}
mixin(ViewComponentCalls!("CMSTutorialForm"));

