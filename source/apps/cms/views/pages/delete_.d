module uim.cms.views.pages.delete_;

import uim.cms;
@safe:
import uim.cms.views.pages;

class DCMSXPagesDeleteView : DAPPEntityDeleteView {
  mixin(ViewThis!("CMSXPagesDeleteView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/pages");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleDelete("Page löschen"))
        .rootPath(this.rootPath);
    }
    
     if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/delete")
        .content(CMSXFormContent.form(myForm))
        .rootPath(this.rootPath);

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Pages")
          .subTitle("Pages löschen");
      }
    }    
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXPagesDeleteView~"::DCMSXPagesDeleteView:beforeH5");
    super.beforeH5(options);

    auto headerTitle = "Page ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Page Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/", "UIM"],
            ["/cms", "CMSX"],
            [this.rootPath, "Pages"],
            [this.rootPath~"/delete?id="~(this.entity ? this.entity["id"] : " -missing-"), "Löschen"]
          );
    }
  }
}
mixin(ViewCalls!("CMSXPagesDeleteView"));