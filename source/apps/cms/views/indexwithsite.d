module apps.cms.views.indexwithsite;

import apps.cms;
@safe:

class DCMSXIndexWithSiteView : DView {
  mixin(ViewThis!("CMSXIndexWithSiteView"));

  mixin(OProperty!("DEntity", "site"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXIndexWithSiteView~"DCMSXIndexWithSiteView::toH5");
    super.toH5(options);
    // debug writeln("apps.cms.pages.index:serverCms.index:toH5 -> reqParameters = ", options);
    // debug writeln("apps.cms.pages.index:serverCms.index:toH5 -> pageTitle = ", options.get("pageTitle", ""));

    return 
      [H5Div(["content"],
        H5Div(["container-xl"], 
          BS5Row("messages", [""]),
          BS5Row(["row-deck row-cards"], site.id.toString)))].toH5;
    }
  }
mixin(ViewCalls!("CMSXIndexWithSiteView"));
