module apps.cms.controllers.pages.links.index;

import apps.cms;
@safe:

class DCMSLinksIndexPageController : DCMSIndexPageController {
  mixin(ControllerThis!("CMSLinksIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }
  
  override void beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSLinksIndexPageController~":DCMSLinksIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }
    
    auto mySession = sessionManager.session(options);
    if (mySession.isNull) {
      debug writeln("Session missing"); 
      return; 
    }

    if (!mySession.site) { 
      this.error("Session missing"); 
      return; 
    }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

    if (auto entitiesView = cast(DCMSIndexView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_links"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/links")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return; }
  }
}
mixin(ControllerCalls!("CMSLinksIndexPageController"));