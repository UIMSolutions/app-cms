module apps.cms.views.components.forms.contents.offer;

import apps.cms;
@safe:

class DCMSOfferFormContent : DCMSPostFormContent {
  mixin(ViewComponentThis!("CMSOfferFormContent"));
}
mixin(ViewComponentCalls!("CMSOfferFormContent"));

version(test_uim_cms) { unittest {
   assert(CMSOfferFormContent(myForm));
}}