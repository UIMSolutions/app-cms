module apps.cms.views.news.index;

import apps.cms;
@safe:

class DCMSNewsIndexView : DCMSView {
  mixin(ViewThis!("CMSNewsIndexView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/news");

    auto myPageHeader = PageHeader(this);
    myPageHeader  
      .title(titleView("Übersicht TuNewstorials")) 
      .actions([["refresh", "list", "create"]])
      .rootPath(this.rootPath)
      .breadcrumbs
        .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "News"]
        );

    /* auto headerTitle = titleList("News"); */
    auto bodyTitle = "Gefundene News";

    auto myForm = EntitiesListForm(this)
      .header(
        FormHeader
          .mainTitle("News")
          .subTitle("News anzeigen")
          .actions([["print", "export"]]));
    this
      .header(myPageHeader)
      .form(
        myForm
          .content(EntitiesFormContent.form(myForm))
          .rootPath(this.rootPath));
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXNewsIndexView~":DCMSXNewsIndexView("~this.name~")::beforeH5");
    super.beforeH5(options);
    if (hasError || "redirect" in options) { return; }

    if (auto myForm = cast(DForm)this.form) {
      myForm.entities(this.entities);
    } 

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