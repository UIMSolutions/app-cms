module apps.cms.controllers.pages.blogs.edit;

import apps.cms;
@safe:

class DCMSBlogsEditPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsEditPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsUpdateView(this));

     this
      .view(
        CMSXBlogsUpdateView(this))
      .rootPath("/cms/blogs") 
      .collectionName("cms_blogs");   

    if (auto vw = cast(DCMSXBlogsUpdateView)this.view) {
      if (auto form = cast(DForm)vw.form) {
        this
          .scripts
            .addContents(
              editorSummary~editorText,
        `window.addEventListener('load', (event) => {
          document.getElementById("`~form.id~`").addEventListener("submit", event => {
            editorSummary.save();
            editorText.save();
          })
        });`);
    }}
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsEditPageController~":DCMSBlogsEditPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsEditPageController"));
