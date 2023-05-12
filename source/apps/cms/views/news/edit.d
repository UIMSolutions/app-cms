module apps.cms.views.news.edit;

import apps.cms;
@safe:

class DCMSNewsEditView : DCMSView {
  mixin(ViewThis!("CMSNewsEditView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("News -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/news", "News"],
            [this.rootPath~"/news/edit", "Edit"]
          );
  }
}
mixin(ViewCalls!("CMSNewsEditView", "DCMSNewsEditView"));