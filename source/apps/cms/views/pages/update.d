module uim.cms.views.pages.update;

import uim.cms;
@safe:
import uim.cms.views.pages;

class DCMSXPagesUpdateView : DAPPEntityUpdateView {
  mixin(ViewThis!("CMSXPagesUpdateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .rootPath("/cms/pages");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleEdit("Page bearbeiten"))
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action("/cms/pages/actions/update")
        .crudMode(CRUDModes.Update)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Pages")
          .subTitle("Pages bearbeiten");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXPagesUpdateView~"::DCMSXPagesUpdateView:beforeH5");
    super.beforeH5(options);

    if (this.header) this.header.entity(this.entity);

    auto headerTitle = "Page ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Page Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/cms", "CMSX"],
            [this.rootPath, "Pages"],
            [this.rootPath~"/update?id="~(this.entity ? this.entity["id"] : " -missing-"), "Bearbeiten"]
          );
    }
  }
}
mixin(ViewCalls!("CMSXPagesUpdateView"));