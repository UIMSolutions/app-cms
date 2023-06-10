module apps.cms.controllers.pages.docus.delete_;

import apps.cms;
@safe:

class DCMSDocusDeletePageController : DCMSDeletePageController {
  mixin(PageControllerThis!("CMSDocusDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSDocusDeleteView(this))
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
mixin(PageControllerCalls!("CMSDocusDeletePageController"));