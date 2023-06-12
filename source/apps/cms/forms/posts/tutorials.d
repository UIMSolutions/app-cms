module apps.cms.views.components.forms.posts.tutorials;

import apps.cms;
@safe:

class DCMSTutorialForm : DCMSForm {
  mixin(ViewComponentThis!("CMSTutorialForm"));
}
mixin(ViewComponentCalls!("CMSTutorialForm"));

