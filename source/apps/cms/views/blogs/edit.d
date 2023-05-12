module apps.cms.views.blogs.edit;

import apps.cms;
@safe:

class DCMSBlogsEditView : DCMSEditView {
  mixin(ViewThis!("CMSBlogsEditView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCEditPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMS"],
            [this.rootPath~"/blogs", "Blogs"],
            [this.rootPath~"/blogs/edit", "Edit"]
          );
  }
}
mixin(ViewCalls!("CMSBlogsEditView", "DCMSBlogsEditView"));