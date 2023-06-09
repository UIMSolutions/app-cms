module uim.cms.views.offers.index;

import uim.cms;
@safe:
import uim.cms.views.offers;

class DCMSXOffersIndexView : DAPPEntitiesListView {
  mixin(ViewThis!("CMSXOffersIndexView"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this.rootPath("/cms/offers");

    auto headerTitle = titleList("Offers");
    auto bodyTitle = "Gefundene Offers";

    auto myForm = EntitiesListForm(this)
      .header(
        FormHeader
          .mainTitle("Offers")
          .subTitle("Offers anzeigen")
          .actions([["print", "export"]]));

    auto myPageHeader = PageHeader(this);
    myPageHeader
      .title(titleView("Übersicht Offers"))
      .actions([["refresh", "list", "create"]])
      .rootPath(this.rootPath)
      .breadcrumbs
        .items(
          ["/", "UIM"],
          ["/cms", "CMSX"],
          [this.rootPath, "Offers"]
        );

    this
      .header(myPageHeader)
      .form(
        myForm
          .content(EntitiesFormContent.form(myForm))
          .rootPath(this.rootPath));
  }

  override void beforeH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersIndexView~":DCMSXOffersIndexView("~this.name~")::beforeH5");
    super.beforeH5(options);
    if (hasError || "redirect" in options) { return; }

    if (auto myForm = cast(DForm)this.form) {
      myForm.entities(this.entities);
    } 
  }

/*   override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXOffersIndexView~":DCMSXOffersIndexView("~this.name~")::toH5");
    super.toH5(options);

    options["rootPath"] = myRootPath;

    this// .rootPath(myRootPath);
    debug writeln("RootPath in DCMSXOffersIndexView:toH5 -> ", this.rootPath);
    debug writeln("this.form.rootPath(",this.rootPath,")");

    return [
      H5Div(["content"],
        H5Div(["container-xl"], 
          BS5Row("messages", [""]),
          BS5Row(["row-deck row-cards"], 
          this.form
          .rootPath(this.rootPath)
          .entities(this.entities)
          .toH5(options)
    )))].toH5;              
  }  */
}
mixin(ViewCalls!("CMSXOffersIndexView"));

version(test_uim_cms) { unittest {
    assert(CMSXOffersIndexView);
}}