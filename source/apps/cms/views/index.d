module apps.cms.views.index;

import apps.cms;
@safe:

class DIndexView : DCMSView {
  mixin(ViewThis!("IndexView"));

  mixin(OProperty!("DEntity[]", "sites"));
  mixin(OProperty!("DEntity", "selectedSite"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("CMS -> Index");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DIndexView~"DIndexView::toH5");
    super.toH5(options);
    debug writeln("uim.cms.pages.index:serverCms.index:toH5 -> reqParameters = ", options);
    debug writeln("uim.cms.pages.index:serverCms.index:toH5 -> pageTitle = ", options.get("pageTitle", ""));

    debug writeln("Existing sites: ", sites.length);
    DH5Obj[] sitesContent; 
    foreach(s; sites) {
      sitesContent ~= 
        H5Div(["col-md-6 col-xl-3"],
          H5Div(["ratio ratio-1x1"], 
            BS5Form(["method":"Post", "action": "/sites/select?siteId="~s.id.toString], 
              BS5Card(["h-100"])
                .body_(["text-center"], 
                  H5Div(["card-title mb-1"], s.id.toString),
                  H5Div(["card-title mb-1"], s.display),
                  H5Div(["text-muted"], BS5ButtonSubmit(["btn-info"], "Site auswählen"))))));
    }

/*     return [
        H5Div(["content"],
          H5Div(["container-xl"], 
            BS5Row("messages", [""]),
            BS5Row(["row-deck row-cards"], sitesContent)))].toH5; */

    return [
      H5Div("APP CMS -> Index")
    ].toH5;
  }
}
mixin(ViewCalls!("IndexView", "DIndexView"));
