module apps.cms.views.components.forms.contents.offer;

import apps.cms;
@safe:

class DCMSXOfferFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXOfferFormContent"));
}
mixin(ViewComponentCalls!("CMSXOfferFormContent"));

version(test_uim_cms) { unittest {
   assert(CMSXOfferFormContent(myForm));
}}