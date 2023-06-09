module uim.cms.controllers.pages.pages.index;

import uim.cms;
@safe:

class DCMSXPagesIndexPageController : DCMSXPageController {
  mixin(PageControllerThis!("CMSXPagesIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }
  
  override void beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSXPagesIndexPageController~":DCMSXPagesIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }
    
    auto appSession = getAppSession(options);
    if (appSession) {
      if (!appSession.site) { 
        this.error("AppSession missing"); 
        return; }
    }
    else { debug writeln("AppSession missing"); return; }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

    if (auto entitiesView = cast(DAPPEntitiesListView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_pages"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/pages")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return; }
  }
}
mixin(PageControllerCalls!("CMSXPagesIndexPageController"));