module uim.cms.views.components.forms.contents.news;

import uim.cms;
@safe:

class DCMSXNewsItemFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXNewsItemFormContent"));
}
mixin(ViewComponentCalls!("CMSXNewsItemFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXNewsItemFormContent(myForm));
  }
}
