module uim.cms.controllers.pages.offers.read;

import uim.cms;
@safe:

class DCMSXOffersReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXOffersReadPageController"));

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
      .collectionName("cms_offers");   }
}
mixin(PageControllerCalls!("CMSXOffersReadPageController"));