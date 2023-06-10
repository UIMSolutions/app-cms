module apps.cms.controllers.pages.docus.create;

import apps.cms;
@safe:

class DCMSDocusCreatePageController : DCMSCreatePageController {
  mixin(PageControllerThis!("CMSDocusCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .view(
      CMSDocusCreateView(this))
    .scripts
      .addContents(
        editorSummary~
        editorText,
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
mixin(PageControllerCalls!("CMSDocusCreatePageController"));
