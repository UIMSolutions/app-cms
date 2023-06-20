module apps.cms.controllers.pages.pages.index;

import apps.cms;
@safe:

class DCMSPagesIndexPageController : DCMSIndexPageController {
  mixin(ControllerThis!("CMSPagesIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }
  
  override void beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSPagesIndexPageController~":DCMSPagesIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }
    
    auto mySession = sessionManager.session(options);
    if (mySession.isNull) { 
      debug writeln("AppSession missing"); 
      return; 
    }

    if (!mySession.site) { 
      this.error("AppSession missing"); 
      return; 
    }

    auto myDatabase = this.database;
    if (myDatabase) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

    if (auto entitiesView = cast(DCMSIndexView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = myDatabase["uim", "cms_pages"].findMany();
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
mixin(ControllerCalls!("CMSPagesIndexPageController"));