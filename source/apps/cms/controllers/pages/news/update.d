module apps.cms.controllers.pages.news.edit;

import apps.cms;
@safe:

class DCMSNewsEditPageController : DPageController {
  mixin(ControllerThis!("CMSNewsEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsUpdateView(this));

        this
      .scripts.addContents(
        editorSummary~editorText,
`window.addEventListener('load', (event) => {
  document.getElementById("form").addEventListener("submit", event => {
    editorSummary.save();
    editorText.save();
  })
});`);

    this
      .rootPath("/cms/news") 
      .collectionName("cms_news"); 
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsEditPageController~":DCMSNewsEditPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSNewsEditPageController"));