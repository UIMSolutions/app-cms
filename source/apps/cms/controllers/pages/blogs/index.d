module apps.cms.controllers.pages.blogs.index;

import apps.cms;
@safe:

class DCMSBlogsIndexPageController : DPageController {
  mixin(ControllerThis!("CMSBlogsIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSBlogsIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsIndexPageController~":DCMSBlogsIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || hasRedirect) { return; }        

    // if (hasError || "redirect" in options) { return; }
    
    if (!manager) { return; } // No manager no fun ;-)

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

    if (auto entitiesView = cast(DEntitiesListView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = myDatabase["uim", "cms_blogs"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/blogs")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return; }
  } 
}
mixin(ControllerCalls!("CMSBlogsIndexPageController"));
