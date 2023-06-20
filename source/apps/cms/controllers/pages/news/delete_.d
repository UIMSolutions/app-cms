module apps.cms.controllers.pages.news.delete_;

import apps.cms;
@safe:

class DCMSNewsDeletePageController : DPageController {
  mixin(ControllerThis!("CMSNewsDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsDeleteView(this));

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
    debugMethodCall(moduleName!DCMSNewsDeletePageController~":DCMSNewsDeletePageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSNewsDeletePageController"));
