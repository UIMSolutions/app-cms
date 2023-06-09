module uim.cms.controllers.pages.tutorials.delete_;

import uim.cms;
@safe:

class DCMSXTutorialsDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXTutorialsDeletePageController"));

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
mixin(PageControllerCalls!("CMSXTutorialsDeletePageController"));