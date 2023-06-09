module uim.cms.views.docus.delete_;

import uim.cms;
@safe:
import uim.cms.views.docus;

class DCMSXDocusDeleteView : DAPPEntityDeleteView {
  mixin(ViewThis!("CMSXDocusDeleteView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/blogs");

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleDelete("Blog löschen")) 
        .rootPath(this.rootPath);
    }
    
     if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/delete")
        .content(CMSXFormContent.form(myForm))
        .rootPath(this.rootPath);

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Blogs")
          .subTitle("Blogs löschen");
      }
    }    
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXBlogsDeleteView~"::DCMSXBlogsDeleteView:beforeH5");
    super.beforeH5(options);

    auto headerTitle = "Blog ID:"~(this.entity ? this.entity.id.toString : " - Unbekannt -");
    auto bodyTitle = "Blog Name:";

    if (auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .breadcrumbs
          .items(
            ["/cms", "CMSX"],
            [this.rootPath, "Blogs"],
            [this.rootPath~"/delete?id="~(this.entity ? this.entity["id"] : " -missing-"), "Löschen"]
         );
    }
  }
}
mixin(ViewCalls!("CMSXDocusDeleteView"));