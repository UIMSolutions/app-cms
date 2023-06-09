module uim.cms.controllers.pages.pages.read;

import uim.cms;
@safe:

class DCMSXPagesReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXPagesReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~
      editorText~
      "editorSummary.disabled();"~
      "editorText.disabled();"
    );

    this
      .rootPath("/cms/pages") 
      .collectionName("cms_pages"); 
  }
}
mixin(PageControllerCalls!("CMSXPagesReadPageController"));