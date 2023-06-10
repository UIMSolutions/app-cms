module uim.cms.views.components.forms.posts.offers;;

import uim.cms;
@safe:

class DCMSXOfferForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXOfferForm"));
}
mixin(ViewComponentCalls!("CMSXOfferForm"));

version(test_uim_cms) { unittest {
    // TODO
}}