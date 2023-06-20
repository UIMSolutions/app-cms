module apps.cms.controllers.pages.news.index;

import apps.cms;
@safe:

class DCMSNewsIndexPageController : DPageController {
  mixin(ControllerThis!("CMSNewsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSNewsIndexView(this));
  }

  override bool beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsIndexPageController~":DCMSNewsIndexPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || hasRedirect) { return false; } 

    auto mySession = sessionManager.session(options);
    if (mySession.isNull) { 
      debug writeln("mySession missing"); 
      return false; 
    }

    if (!mySession.site) { 
      this.error("mySession missing"); 
      return false; 
    }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return false; }

    if (auto entitiesView = cast(DEntitiesListView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_news"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/news")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return false; }   

    return true;    
  } 
}
mixin(ControllerCalls!("CMSNewsIndexPageController"));
