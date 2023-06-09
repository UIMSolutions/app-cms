module uim.cms.controllers.pages.links.delete_;

import uim.cms;
@safe:

class DCMSXLinksDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXLinksDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXBlogsDeleteView(this))    
      .scripts
        .addContents(
          editorSummary~editorText~
          "editorSummary.disabled();"~
          "editorText.disabled();"
        );

    this
      .rootPath("/cms/links") 
      .collectionName("cms_links"); 
  }
}
mixin(PageControllerCalls!("CMSXLinksDeletePageController"));