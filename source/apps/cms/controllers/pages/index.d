module apps.cms.controllers.pages.index;

import apps.cms;
@safe:

class DCMSIndexPageController : DAPPPageController {
  mixin(ControllerThis!("CMSIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      /* .checks([AppSessionHasSessionCheck]) */
      .view(CMSIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSIndexPageController~":DCMSIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    // AppSessionHasSiteCheckId(this).check(_request, _response, reqParameters);

    this.view(
      CMSIndexView(this));

    if (auto appSession = getAppSession(options)) {      
      debug writeln(appSession.debugInfo);
      auto session = appSession.session; 
      auto site    = appSession.site;

      if (site) { // selected site
        debug writeln("Has Site", site.id, "/", site.name);
        session["siteId"] = site.id.toString;
        this.view(
          CMSIndexView(this).selectedSite(site));
      }
      else {
        debug writeln("No Site");

        auto dbSites = database ? database["systems", "system_sites"].findMany : null;
        debug writeln("Found sites = ", dbSites.length);

        this.view(
          CMSIndexView(this).sites(dbSites));
      }
    }
    else {
      debug writeln("No AppSession");
    }
  }
}
mixin(ControllerCalls!("CMSIndexPageController", "DCMSIndexPageController"));


