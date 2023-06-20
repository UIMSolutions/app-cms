module apps.cms.controllers.pages.glossary.index;

import apps.cms;
@safe:

class DCMSGlossaryIndexPageController : DCMSIndexPageController {
  mixin(ControllerThis!("CMSGlossaryIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(
        CMSGlossaryIndexView(this));
  }
  
  override bool beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSGlossaryIndexPageController~":DCMSGlossaryIndexPageController::beforeResponse");
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

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

    if (auto entitiesView = cast(DCMSIndexView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_glossary"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/glossary")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return; }
  }
}
mixin(ControllerCalls!("CMSGlossaryIndexPageController"));