module apps.cms.views.news.delete_;

import apps.cms;
@safe:

class DCMSNewsDeleteView : DCMSView {
  mixin(ViewThis!("CMSNewsDeleteView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Delete")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/delete", "Delete"]
          );
  }
}
mixin(ViewCalls!("CMSNewsDeleteView", "DCMSNewsDeleteView"));
