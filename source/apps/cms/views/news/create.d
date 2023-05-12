module apps.cms.views.news.create;

@safe:
import apps.cms;

class DCMSNewsCreateView : DCMSView {
  mixin(ViewThis!("CMSNewsCreateView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Create")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/create", "Create"]
          );
  }
}
mixin(ViewCalls!("CMSNewsCreateView", "DCMSNewsCreateView"));
