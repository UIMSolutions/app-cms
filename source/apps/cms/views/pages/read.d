module uim.cms.views.pages.read;

import uim.cms;
@safe:
import uim.cms.views.pages;

class DCMSXPagesReadView : DAPPEntityReadView {
  mixin(ViewThis!("CMSXPagesReadView"));

override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/pages");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleView("Page anzeigen"))
        .actions([["refresh", "list", "create"]])
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .crudMode(this.crudMode)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Pages")
          .subTitle("Pages anzeigen");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXPagesReadView~"::DCMSXPagesReadView:beforeH5");
    super.beforeH5(options);
    if (hasError || "redirect" in options) { return; }

    auto headerTitle = "Page ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Page Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMSX"],
            [this.rootPath, "Pages"],
            [rootPath~"/view?id="~(this.entity ? this.entity["id"] : " -missing-"), "Anzeigen"]
          );
    }

    this.form
      .parameter("headerTitle", headerTitle)
      .parameter("bodyTitle", bodyTitle)
      .entity(this.entity);
  }
}
mixin(ViewCalls!("CMSXPagesReadView"));

version(test_uim_cms) { unittest {
    // TODO
}}