module uim.cms.controllers.pages.offers.update;

import uim.cms;
@safe:

class DCMSXOffersUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXOffersUpdatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~editorText,
`window.addEventListener('load', (event) => {
  document.getElementById("form").addEventListener("submit", event => {
    editorSummary.save();
    editorText.save();
  })
});`);

    this
      .rootPath("/cms/offers") 
      .collectionName("cms_offers"); 
  }
}
mixin(PageControllerCalls!("CMSXOffersUpdatePageController"));