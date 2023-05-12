module apps.cms.views.blogs.read;

@safe:
import apps.cms;

class DCMSBlogsReadView : DCMSReadView {
  mixin(ViewThis!("CMSBlogsReadView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCReadPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent); 

    this
      .pageHeader
        .title("Blogs -> Read")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMS"],
            [this.rootPath~"/blogs", "Blogs"],
            [this.rootPath~"/blogs/read", "Read"]
          );
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ViewCalls!("CMSBlogsReadView", "DCMSBlogsReadView"));