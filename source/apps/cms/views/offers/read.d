module uim.cms.views.offers.read;

import uim.cms;
@safe:
import uim.cms.views.offers;

class DCMSXOffersReadView : DAPPEntityReadView {
  mixin(ViewThis!("CMSXOffersReadView"));

override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/offers");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleView("Offer anzeigen"))
        .actions([["refresh", "list", "create"]])
        .rootPath(this.rootPath);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .crudMode(this.crudMode)
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Offers")
          .subTitle("Offers anzeigen");
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersReadView~"::DCMSXOffersReadView:beforeH5");
    super.beforeH5(options);
    if (hasError || "redirect" in options) { return; }

    auto headerTitle = "Offer ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Offer Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "Offers"],
          [rootPath~"/view?id="~(this.entity ? this.entity["id"] : " -missing-"), "Anzeigen"]
        );
    }

    this.form
      .parameter("headerTitle", headerTitle)
      .parameter("bodyTitle", bodyTitle)
      .entity(this.entity);
  }
}
mixin(ViewCalls!("CMSXOffersReadView"));

version(test_uim_cms) { unittest {
    // TODO
}}