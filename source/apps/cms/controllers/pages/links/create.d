module apps.cms.controllers.pages.links.create;

import apps.cms;
@safe:

class DCMSXLinksCreatePageController : DCMSXCreatePageController {
  mixin(PageControllerThis!("CMSXLinksCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSXBlogsCreateView(this))    
      .scripts.addContents(
        editorSummary~editorText,
        `window.addEventListener('load', (event) => {
          document.getElementById("form").addEventListener("submit", event => {
            editorSummary.save();
            editorText.save();
          })
        });`);

    this
      .rootPath("/cms/links") 
      .collectionName("cms_links");         
  }
}
mixin(PageControllerCalls!("CMSXLinksCreatePageController"));
