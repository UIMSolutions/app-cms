module uim.cms.views.tutorials.create;

import uim.cms;
@safe:
import uim.cms.views.tutorials;

class DCMSXTutorialsCreateView : DAPPEntityCreateView {
  mixin(ViewThis!("CMSXTutorialsCreateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
    
    this.rootPath("/cms/tutorials");

    if(auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleCreate("Tutorial erstellen"))
        .rootPath(this.rootPath)
        .breadcrumbs
          .items(
            ["/cms", "CMSX"],
            [this.rootPath, "Tutorials"],
            [this.rootPath~"/create", "Create"]
          );
    }
    
    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .content(CMSXFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Neuer Tutorial")
          .subTitle("Bitte Werte eingeben")
          .actions([["cancel","save"]]);
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXTutorialsCreateView~"::DCMSXTutorialsCreateView:beforeH5");
    super.beforeH5(options);

    options["rootPath"] = this.rootPath;

    if (this.controller && this.controller.database) {
      this.entity(this.controller.database["uim"]["cms_tutorials"].createFromTemplate);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .entity(this.entity);
    }
  }
}
mixin(ViewCalls!("CMSXTutorialsCreateView"));
