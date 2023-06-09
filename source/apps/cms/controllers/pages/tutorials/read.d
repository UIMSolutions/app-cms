module uim.cms.controllers.pages.tutorials.read;

import uim.cms;
@safe:

class DCMSXTutorialsReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXTutorialsReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~
      editorText~
      "editorSummary.disabled();"~
      "editorText.disabled();"
    );
    this
      .rootPath("/cms/tutorials") 
      .collectionName("cms_tutorials"); 
  }
}
mixin(PageControllerCalls!("CMSXTutorialsReadPageController"));