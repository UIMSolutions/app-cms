module uim.cms.controllers.pages.offers.delete_;

import uim.cms;
@safe:

class DCMSXOffersDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXOffersDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~
      editorText~
      "editorSummary.disabled();"~
      "editorText.disabled();"
    );

    this
      .rootPath("/cms/offers") 
      .collectionName("cms_offers"); 
  }
}
mixin(PageControllerCalls!("CMSXOffersDeletePageController"));