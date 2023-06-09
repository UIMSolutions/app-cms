module uim.cms.controllers.pages.news.read;

import uim.cms;
@safe:

class DCMSXNewsReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXNewsReadPageController"));

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
mixin(PageControllerCalls!("CMSXNewsReadPageController"));