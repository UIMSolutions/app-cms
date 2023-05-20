module apps.cms.controllers.pages.index;

import apps.cms;
@safe:

class DIndexPageController : DAPPPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      /* .checks([AppSessionHasSessionCheck]) */
      .view(IndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DIndexPageController~":DIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    // AppSessionHasSiteCheckId(this).check(_request, _response, reqParameters);

    this.view(
      IndexView(this));

    /* if (auto appSession = getAppSession(options)) {      
      debug writeln(appSession.debugInfo);
      auto session = appSession.session; 
      auto site    = appSession.site;

      if (site) { // selected site
        debug writeln("Has Site", site.id, "/", site.name);
        session["siteId"] = site.id.toString;
        this.view(
          IndexView(this).selectedSite(site));
      }
      else {
        debug writeln("No Site");

        auto dbSites = database ? database["systems", "system_sites"].findMany : null;
        debug writeln("Found sites = ", dbSites.length);

        this.view(
          IndexView(this).sites(dbSites));
      }
    }
    else {
      debug writeln("No AppSession");
    } */
  }
}
mixin(ControllerCalls!("IndexPageController", "DIndexPageController"));


