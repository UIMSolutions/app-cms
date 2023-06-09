module uim.cms.controllers.pages.glossary.create;

import uim.cms;
@safe:

class DCMSXGlossaryCreatePageController : DCMSXCreatePageController {
  mixin(PageControllerThis!("CMSXGlossaryCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXGlossaryCreateView(this))
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
      .rootPath("/cms/glossary") 
      .collectionName("cms_glossary"); 
  }
}
mixin(PageControllerCalls!("CMSXGlossaryCreatePageController"));
