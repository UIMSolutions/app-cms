module apps.cms.views.offers;

import apps.cms;
@safe:

// Main
public import apps.cms.views.offers.index;

// CRUD Modules
public import apps.cms.views.offers.create;
public import apps.cms.views.offers.read;
public import apps.cms.views.offers.update;
public import apps.cms.views.offers.delete_;

package:
  string myRootPath = "/cms/offers";