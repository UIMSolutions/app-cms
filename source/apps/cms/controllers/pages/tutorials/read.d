module apps.cms.controllers.pages.tutorials.read;

import apps.cms;
@safe:

class DCMSTutorialsReadPageController : DCMSReadPageController {
  mixin(PageControllerThis!("CMSTutorialsReadPageController"));

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
mixin(PageControllerCalls!("CMSTutorialsReadPageController"));