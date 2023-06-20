module apps.cms.controllers.pages.tutorials.index;

import apps.cms;
@safe:

class DCMSTutorialsIndexPageController : DCMSIndexPageController {
  mixin(ControllerThis!("CMSTutorialsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }
  
  override void beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSTutorialsIndexPageController~":DCMSTutorialsIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }
    
    auto mySession = sessionManager.session(options);
    if (mySession) {
      if (!mySession.site) { 
        this.error("mySession missing"); 
        return; }
    }
    else { debug writeln("mySession missing"); return; }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

    if (auto entitiesView = cast(DCMSIndexView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_tutorials"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/tutorials")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return; }
  }
}
mixin(ControllerCalls!("CMSTutorialsIndexPageController"));