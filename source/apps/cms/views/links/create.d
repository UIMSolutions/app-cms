module uim.cms.views.links.create;

import uim.cms;
@safe:
import uim.cms.views.links;

class DCMSLinksCreateView : DAPPEntityCreateView {
  mixin(ViewThis!("CMSLinksCreateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
    
    this.rootPath("/cms/links");

    if(auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleCreate("Link erstellen"))
        .rootPath(this.rootPath)
        .breadcrumbs
          .items(
          ["/cms", "CMS"],
          [this.rootPath, "Links"],
          [this.rootPath~"/create", "Create"]
        );
    }
    
    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .content(CMSFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Neuer Link")
          .subTitle("Bitte Werte eingeben")
          .actions([["cancel","save"]]);
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSLinksCreateView~"::DCMSLinksCreateView:beforeH5");
    super.beforeH5(options);

    options["rootPath"] = this.rootPath;

    if (this.controller && this.controller.database) {
      this.entity(this.controller.database["uim"]["cms_links"].createFromTemplate);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .entity(this.entity);
    }
  }
}
mixin(ViewCalls!("CMSLinksCreateView"));