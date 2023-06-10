module uim.cms.controllers.pages.docus.update;

import uim.cms;
@safe:

class DCMSXDocusUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXDocusUpdatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXDocusUpdateView(this))
      .scripts
        .addContents(
          editorSummary~editorText,
    `window.addEventListener('load', (event) => {
      document.getElementById("form").addEventListener("submit", event => {
        editorSummary.save();
        editorText.save();
      })
    });`);

    this
      .rootPath("/cms/docus") 
      .collectionName("cms_docus"); 
  }
}
mixin(PageControllerCalls!("CMSXDocusUpdatePageController"));