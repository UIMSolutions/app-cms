module apps.cms.views.news.index;

import apps.cms;
@safe:

class DCMSNewsIndexView : DCMSView {
  mixin(ViewThis!("CMSNewsIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"]
          );
  }
}
mixin(ViewCalls!("CMSNewsIndexView", "DCMSNewsIndexView"));