module apps.cms.views.themes.edit;

import apps.cms;
@safe:

class DCMSThemesEditView : DCMSView {
  mixin(ViewThis!("CMSThemesEditView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .rootPath("/cms/themes");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleEdit("Theme bearbeiten"))
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action("/cms/themes/actions/update")
        .crudMode(CRUDModes.Update)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Themes")
          .subTitle("Themes bearbeiten");
      }
    }
  }


  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXThemesUpdateView~"::DCMSXThemesUpdateView:beforeH5");
    super.beforeH5(options);

    if (this.header) this.header.entity(this.entity);

    auto headerTitle = "Theme ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Theme Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMSX"],
            [this.rootPath, "Themes"],
            [rootPath~"/update?id="~(this.entity ? this.entity["id"] : " -missing-"), "Bearbeiten"]
          );
    }

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