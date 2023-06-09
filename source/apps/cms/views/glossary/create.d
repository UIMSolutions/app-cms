module apps.cms.views.glossary.create;

import apps.cms;
@safe:
import apps.cms.views.glossary;

class DCMSGlossaryCreateView : DCMSCreateView {
  mixin(ViewThis!("CMSGlossaryCreateView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
    
    this.rootPath("/cms/glossary");

    if(auto myHeader = cast(DPageHeaderViewComponent)this.header) {
      myHeader
        .title(titleCreate("Glossary erstellen"))
        .rootPath(this.rootPath)
        .breadcrumbs
          .items(
          ["/cms", "CMS"], 
          [this.rootPath, "Glossary"], 
          [this.rootPath~"/create", "Create"]
        );
    }
    
    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .content(CMSFormContent.form(myForm));

      if (auto myFormHeader = cast(DFormHeader)myForm.header) {
        myFormHeader
          .mainTitle("Neuer Glossary")
          .subTitle("Bitte Werte eingeben")
          .actions([["cancel","save"]]);
      }
    }
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSGlossaryCreateView~"::DCMSGlossaryCreateView:beforeH5");
    super.beforeH5(options);

    options["rootPath"] = this.rootPath;

    if (this.controller && this.controller.database) {
      this.entity(this.controller.database["uim"]["cms_glossary"].createFromTemplate);
    }

    if (auto myForm = cast(DForm)this.form) {
      myForm
        .action(this.rootPath~"/actions/create")
        .entity(this.entity);
    }
  }
}
mixin(ViewCalls!("CMSGlossaryCreateView"));
