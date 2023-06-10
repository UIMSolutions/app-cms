module apps.cms.controllers.pages.themes.create;

import apps.cms;
@safe:

class DCMSThemesCreatePageController : DPageController {
  mixin(ControllerThis!("CMSThemesCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSThemesCreateView(this));

        this
    .scripts.addContents(
      editorSummary~
      editorText,
`window.addEventListener('load', (event) => {
  document.getElementById("form").addEventListener("submit", event => {
    editorSummary.save();
    editorText.save();
  })
});`);

    this
      .rootPath("/cms/themes") 
      .collectionName("cms_themes"); 
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSThemesCreatePageController~":DCMSThemesCreatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  }
}
mixin(ControllerCalls!("CMSThemesCreatePageController"));
