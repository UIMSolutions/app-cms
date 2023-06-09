module apps.cms.controllers.pages.glossary.delete_;

import apps.cms;
@safe:

class DCMSXGlossaryDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXGlossaryDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXGlossaryDeleteView(this))
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
mixin(PageControllerCalls!("CMSXGlossaryDeletePageController"));