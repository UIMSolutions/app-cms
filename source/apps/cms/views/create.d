module apps.cms.views.create;

import apps.cms;
@safe:

class DCMSCreateView : DCMSView {
  mixin(ViewThis!("CMSCreateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(MVCCreatePageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent);  
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Blogs -> Create")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/blogs", "Blogs"],
            [this.rootPath~"/blogs/create", "Create"]
          );
  }
}
mixin(ViewCalls!("CMSCreateView", "DCMSCreateView"));
