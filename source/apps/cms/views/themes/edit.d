module apps.cms.views.themes.edit;

@safe:
import apps.cms;

class DCMSThemesEditView : DCMSView {
  mixin(ViewThis!("CMSThemesEditView"));



  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("Themes -> Edit")
        .breadcrumbs
          .items(
            ["/", "UIM"],
            [this.rootPath, "CMS"],
            [this.rootPath~"/themes", "Themes"],
            [this.rootPath~"/themes/edit", "Edit"]
          );
  }
}
mixin(ViewCalls!("CMSThemesEditView", "DCMSThemesEditView"));