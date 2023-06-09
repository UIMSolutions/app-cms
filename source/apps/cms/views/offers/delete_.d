module uim.cms.views.offers.delete_;

import uim.cms;
@safe:
import uim.cms.views.offers;

class DCMSXOffersDeleteView : DAPPEntityDeleteView {
  mixin(ViewThis!("CMSXOffersDeleteView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/offers");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleDelete("Offer löschen"))
        .rootPath(this.rootPath);
    }
    
     if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/delete")
        .content(CMSXFormContent.form(myForm))
        .rootPath(this.rootPath);

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
        .mainTitle("Offers")
        .subTitle("Offers löschen");
      }
    }    
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersDeleteView~"::DCMSXOffersDeleteView:beforeH5");
    super.beforeH5(options);

    auto headerTitle = "Offer ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Offer Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [rootPath, "Offers"],
          [rootPath~"/delete?id="~(this.entity ? this.entity["id"] : " -missing-"), "Löschen"]
        );
    }
  }
}
mixin(ViewCalls!("CMSXOffersDeleteView"));