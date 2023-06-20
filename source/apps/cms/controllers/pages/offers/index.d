module apps.cms.controllers.pages.offers.index;

import apps.cms;
@safe:

class DCMSOffersIndexPageController : DCMSIndexPageController {
  mixin(ControllerThis!("CMSOffersIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }
  
  override bool beforeResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSOffersIndexPageController~":DCMSOffersIndexPageController::beforeResponse");
    if (!super.beforeResponse(options) || hasError || "redirect" in options) { return false; }
    
    auto mySession = sessionManager.session(options);
    if (mySession.isNull) { 
      if (!mySession.site) { 
        this.error("mySession missing"); 
        return false; }
    }
    else { debug writeln("mySession missing"); return; }

    auto db = this.database;
    if (db) { debug writeln("Database found"); }
    else { 
      this.error("Database missing"); 
      return false; }

    if (auto entitiesView = cast(DCMSIndexView)this.view) {
      debug writeln("entitiesView found");

      auto dbEntities = db["uim", "cms_offers"].findMany();
      debug writeln("Found entities: ", dbEntities.length);

      entitiesView
        .rootPath("/cms/offers")
        .entities(dbEntities);
    }
    else { 
      this.error("entitiesView missing"); 
      return false; }
    
    return true;
  }

}
mixin(ControllerCalls!("CMSOffersIndexPageController"));