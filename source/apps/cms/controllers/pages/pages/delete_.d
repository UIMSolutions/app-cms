module uim.cms.controllers.pages.pages.delete_;

import uim.cms;
@safe:

class DCMSXPagesDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXPagesDeletePageController"));

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
mixin(PageControllerCalls!("CMSXPagesDeletePageController"));