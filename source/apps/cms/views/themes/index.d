module apps.cms.views.themes.index;

import apps.cms;
@safe:

class DCMSThemesIndexView : DCMSView {
  mixin(ViewThis!("CMSThemesIndexView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/themes");

    auto myPageHeader = PageHeader(this);
    myPageHeader
      .title(titleView("Übersicht Themes"))
      .actions([["refresh", "list", "create"]])
      .rootPath(this.rootPath)
      .breadcrumbs
        .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "Themes"]
        );

    auto headerTitle = titleList("Themes");
    auto bodyTitle = "Gefundene Themes";

    auto myForm = EntitiesListForm(this)
      .header(
        FormHeader
          .mainTitle("Themes")
          .subTitle("Themes anzeigen")
          .actions([["print", "export"]]));

    this
      .header(myPageHeader)
      .form(
        myForm
          .content(EntitiesFormContent.form(myForm))
          .rootPath(this.rootPath));     
  }

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