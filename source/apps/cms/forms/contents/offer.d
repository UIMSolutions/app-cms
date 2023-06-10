module uim.cms.views.components.forms.contents.offer;

import uim.cms;
@safe:

class DCMSXOfferFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXOfferFormContent"));
}
mixin(ViewComponentCalls!("CMSXOfferFormContent"));

version(test_uim_cms) { unittest {
   assert(CMSXOfferFormContent(myForm));
}}