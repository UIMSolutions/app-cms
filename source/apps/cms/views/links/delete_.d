module uim.cms.views.links.delete_;

import uim.cms;
@safe:
import uim.cms.views.links;

class DCMSXLinksDeleteView : DAPPEntityDeleteView {
  mixin(ViewThis!("CMSXLinksDeleteView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/links");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleDelete("Link löschen")) 
        .rootPath(this.rootPath);
    }
    
     if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/delete")
        .content(CMSXFormContent.form(myForm))
        .rootPath(this.rootPath);

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Links")
          .subTitle("Links löschen");
      }
    }    
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXLinksDeleteView~"::DCMSXLinksDeleteView:beforeH5");
    super.beforeH5(options);

    auto headerTitle = "Link ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Link Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMSX"],
            [this.rootPath, "Links"],
            [this.rootPath~"/delete?id="~(this.entity ? this.entity["id"] : " -missing-"), "Löschen"],
          );
    }
  }
}
mixin(ViewCalls!("CMSXLinksDeleteView"));