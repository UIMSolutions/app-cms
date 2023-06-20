module apps.cms.controllers.pages.blogs.delete_;

import apps.cms;
@safe:

class DCMSBlogsDeletePageController : DPageController {
  mixin(ControllerThis!("CMSBlogsDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsDeleteView(this));

    this
      .view(
        CMSBlogsDeleteView(this))
      .rootPath("/cms/blogs") 
      .collectionName("cms_blogs")    
      .scripts
        .addContents(
          editorSummary~
          editorText~
          "editorSummary.disabled();"~
          "editorText.disabled();"
        );
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsDeletePageController~":DCMSBlogsDeletePageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; }        
  } 
}
mixin(ControllerCalls!("CMSBlogsDeletePageController"));
