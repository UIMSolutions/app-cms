module apps.cms.controllers.pages.pages.update;

import apps.cms;
@safe:

class DCMSXPagesUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXPagesUpdatePageController"));

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
      .rootPath("/cms/pages") 
      .collectionName("cms_pages"); 
  }
}
mixin(PageControllerCalls!("CMSXPagesUpdatePageController"));