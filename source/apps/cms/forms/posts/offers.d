module apps.cms.views.components.forms.posts.offers;;

import apps.cms;
@safe:

class DCMSOfferForm : DCMSPostForm {
  mixin(ViewComponentThis!("CMSOfferForm"));
}
mixin(ViewComponentCalls!("CMSOfferForm"));

version(test_uim_cms) { unittest {
    // TODO
}}