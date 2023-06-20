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

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSNewsIndexPageController~":DCMSNewsIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; } 

    auto mySession = sessionManager.session(options);
    if (mySession.isNull) { 
      debug writeln("AppSession missing"); 
      return; 
    }

    if (!appSession.site) { 
      this.error("AppSession missing"); 
      return; 
    }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return; }

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
      return; }       
  } 
}
mixin(ControllerCalls!("CMSNewsIndexPageController"));
