module uim.cms.controllers.pages.news.delete_;

import uim.cms;
@safe:

class DCMSXNewsDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXNewsDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~
      editorText~
      "editorSummary.disabled();"~
      "editorText.disabled();"
    );

    this
      .rootPath("/cms/news") 
      .collectionName("cms_news"); 
  }
}
mixin(PageControllerCalls!("CMSXNewsDeletePageController"));