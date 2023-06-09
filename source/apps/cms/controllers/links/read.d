module uim.cms.controllers.pages.links.read;

import uim.cms;
@safe:

class DCMSXLinksReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXLinksReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.scripts.addContents(
      editorSummary~
      editorText~
      "editorSummary.disabled();"~
      "editorText.disabled();"
    );

    this
      .rootPath("/cms/links") 
      .collectionName("cms_links");     
  }
}
mixin(PageControllerCalls!("CMSXLinksReadPageController"));