module uim.cms.views.docus.update;

import uim.cms;
@safe:
import uim.cms.views.docus;

class DCMSXDocusUpdateView : DAPPEntityUpdateView {
  mixin(ViewThis!("CMSXDocusUpdateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .rootPath("/cms/docus");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleEdit("Docu bearbeiten")) 
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action("/cms/docus/actions/update")
        .crudMode(CRUDModes.Update) 
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Docus")
          .subTitle("Docus anzeigen");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXDocusUpdateView~"::DCMSXDocusUpdateView:beforeH5");
    super.beforeH5(options);

    if (this.header) this.header.entity(this.entity);

    auto headerTitle = "Docu ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Docu Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
          ["/cms", "CMSX"],
          [this.rootPath, "Docus"],
          [rootPath~"/update?id="~(this.entity ? this.entity["id"] : " -missing-"), "Bearbeiten"]
        );
    }
  }
}
mixin(ViewCalls!("CMSXDocusUpdateView"));