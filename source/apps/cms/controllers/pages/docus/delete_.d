module apps.cms.controllers.pages.docus.delete_;

import apps.cms;
@safe:

class DCMSXDocusDeletePageController : DCMSXDeletePageController {
  mixin(PageControllerThis!("CMSXDocusDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXDocusDeleteView(this))
      .scripts.addContents(
        editorSummary~editorText~
        "editorSummary.disabled();"~
        "editorText.disabled();"
      );

    this
    .rootPath("/cms/docus") 
    .collectionName("cms_docus"); 
  }
}
mixin(PageControllerCalls!("CMSXDocusDeletePageController"));