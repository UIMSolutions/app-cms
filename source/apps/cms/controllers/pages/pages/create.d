module apps.cms.controllers.pages.pages.create;

import apps.cms;
@safe:

class DCMSXPagesCreatePageController : DCMSXCreatePageController {
  mixin(PageControllerThis!("CMSXPagesCreatePageController"));

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
      .rootPath("/cms/pages") 
      .collectionName("cms_pages"); 
  }
}
mixin(PageControllerCalls!("CMSXPagesCreatePageController"));
