module apps.cms.controllers.pages.news.create;

import apps.cms;
@safe:

class DCMSXNewsCreatePageController : DCMSXCreatePageController {
  mixin(PageControllerThis!("CMSXNewsCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .scripts.addContents(
      editorSummary~
      editorText,
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
mixin(PageControllerCalls!("CMSXNewsCreatePageController"));
