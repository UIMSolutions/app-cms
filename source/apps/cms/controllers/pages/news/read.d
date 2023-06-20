module apps.cms.controllers.pages.news.read;

import apps.cms;
@safe:

class DCMSNewsReadPageController : DPageController {
  mixin(ControllerThis!("CMSNewsReadPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsReadView(this));

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

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsReadPageController~":DCMSNewsReadPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSNewsReadPageController"));
