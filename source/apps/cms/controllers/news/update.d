module apps.cms.controllers.pages.news.update;

import apps.cms;
@safe:

class DCMSXNewsUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXNewsUpdatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .scripts.addContents(
        editorSummary~editorText,
`window.addEventListener('load', (event) => {
  document.getElementById("form").addEventListener("submit", event => {
    editorSummary.save();
    editorText.save();
  })
});`);

    this
      .rootPath("/cms/news") 
      .collectionName("cms_news"); 
  }
}
mixin(PageControllerCalls!("CMSXNewsUpdatePageController"));