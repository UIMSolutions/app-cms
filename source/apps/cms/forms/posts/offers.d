module apps.cms.views.components.forms.posts.offers;;

import apps.cms;
@safe:

class DCMSXOfferForm : DCMSXPostForm {
  mixin(ViewComponentThis!("CMSXOfferForm"));
}
mixin(ViewComponentCalls!("CMSXOfferForm"));

version(test_uim_cms) { unittest {
    // TODO
}}