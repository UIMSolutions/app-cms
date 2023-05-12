module apps.cms.views.themes.index;

import apps.cms;
@safe:

class DCMSThemesIndexView : DCMSView {
  mixin(ViewThis!("CMSThemesIndexView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Index")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"]
          );
  }
}
mixin(ViewCalls!("CMSThemesIndexView", "DCMSThemesIndexView"));