module uim.cms.views.offers.create;

import uim.cms;
@safe:
import uim.cms.views.offers;

class DCMSXOffersCreateView : DAPPEntityCreateView {
  mixin(ViewThis!("CMSXOffersCreateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
    
    this.rootPath("/cms/offers");

    if(auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleCreate("Offer erstellen"))
        .rootPath(this.rootPath)
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMSX"],
            [this.rootPath, "Offers"],
            [this.rootPath~"/create", "Erstellen"]
          );
      }
    
    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Neuer Offer")
          .subTitle("Bitte Werte eingeben")
          .actions([["cancel","save"]]);
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersCreateView~"::DCMSXOffersCreateView:beforeH5");
    super.beforeH5(options);

    options["rootPath"] = this.rootPath;

    if (this.controller && this.controller.database) {
      this.entity(this.controller.database["uim"]["cms_offers"].createFromTemplate);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .entity(this.entity);
    }
  }
}
mixin(ViewCalls!("CMSXOffersCreateView"));
