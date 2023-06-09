module uim.cms.views.offers.update;

import uim.cms;
@safe:
import uim.cms.views.offers;

class DCMSXOffersUpdateView : DAPPEntityUpdateView {
  mixin(ViewThis!("CMSXOffersUpdateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .rootPath("/cms/offers");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleEdit("Offer bearbeiten"))
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action("/cms/offers/actions/update")
        .crudMode(CRUDModes.Update)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Offers")
          .subTitle("Offers bearbeiten");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersUpdateView~"::DCMSXOffersUpdateView:beforeH5");
    super.beforeH5(options);

    if (this.header) this.header.entity(this.entity);

    auto headerTitle = "Offer ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Offer Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "Offers"],
          [rootPath~"/update?id="~(this.entity ? this.entity["id"] : " -missing-"), "Bearbeiten"]
        );
    }
  }
}
mixin(ViewCalls!("CMSXOffersUpdateView"));