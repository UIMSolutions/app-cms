module apps.cms.views.blogs.index;

import apps.cms;
@safe:

class DCMSBlogsIndexView : DCMSIndexView {
  mixin(ViewThis!("CMSBlogsIndexView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCIndexPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent);  
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/blogs", "Blogs"]
          );
  }
}
mixin(ViewCalls!("CMSBlogsIndexView", "DCMSBlogsIndexView"));