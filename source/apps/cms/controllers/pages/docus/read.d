module apps.cms.controllers.pages.docus.read;

import apps.cms;
@safe:

class DCMSXDocusReadPageController : DCMSXReadPageController {
  mixin(PageControllerThis!("CMSXDocusReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXDocusReadView(this))
      .scripts
        .addContents(
          editorSummary~editorText~
          "editorSummary.disabled();"~
          "editorText.disabled();"
        );

    this
      .rootPath("/cms/docus") 
      .collectionName("cms_docus"); 
  }
}
mixin(PageControllerCalls!("CMSXDocusReadPageController"));