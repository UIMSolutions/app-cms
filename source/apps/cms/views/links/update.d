module uim.cms.views.links.update;

import uim.cms;
@safe:
import uim.cms.views.links;

class DCMSXLinksUpdateView : DAPPEntityUpdateView {
  mixin(ViewThis!("CMSXLinksUpdateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .rootPath("/cms/links");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleEdit("Link bearbeiten"))
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action("/cms/links/actions/update")
        .crudMode(CRUDModes.Update)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Links")
          .subTitle("Links bearbeiten");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXLinksUpdateView~"::DCMSXLinksUpdateView:beforeH5");
    super.beforeH5(options);

    if (this.header) this.header.entity(this.entity);

    auto headerTitle = "Link ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Link Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "Links"],
          [rootPath~"/update?id="~(this.entity ? this.entity["id"] : " -missing-"), "Bearbeiten"],
        );
    }
  }
}
mixin(ViewCalls!("CMSXLinksUpdateView"));