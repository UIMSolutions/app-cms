module apps.cms.views.themes.delete_;

import apps.cms;
@safe:

class DCMSThemesDeleteView : DCMSView {
  mixin(ViewThis!("CMSThemesDeleteView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Delete")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"],
            [this.rootPath~"/themes/delete", "Delete"]
          );
  }
}
mixin(ViewCalls!("CMSThemesDeleteView", "DCMSThemesDeleteView"));
