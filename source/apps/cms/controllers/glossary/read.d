module uim.cms.controllers.pages.glossary.read;

import uim.cms;
@safe:

class DCMSXGlossaryReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXGlossaryReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXGlossaryReadView(this))
      .scripts
        .addContents(
          editorSummary~editorText~
          "editorSummary.disabled();"~
          "editorText.disabled();"
        );

    this
      .rootPath("/cms/glossary") 
      .collectionName("cms_glossary"); 
  }
}
mixin(PageControllerCalls!("CMSXGlossaryReadPageController"));