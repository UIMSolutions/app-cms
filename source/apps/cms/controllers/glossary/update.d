module apps.cms.controllers.pages.glossary.update;

import apps.cms;
@safe:

class DCMSXGlossaryUpdatePageController : DCMSXUpdatePageController {
  mixin(PageControllerThis!("CMSXGlossaryUpdatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXGlossaryUpdateView(this))
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
mixin(PageControllerCalls!("CMSXGlossaryUpdatePageController"));