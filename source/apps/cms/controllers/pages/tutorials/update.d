module uim.cms.controllers.pages.tutorials.update;

import uim.cms;
@safe:

class DCMSXTutorialsUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXTutorialsUpdatePageController"));

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
      .rootPath("/cms/tutorials") 
      .collectionName("cms_tutorials"); 
  }
}
mixin(PageControllerCalls!("CMSXTutorialsUpdatePageController"));