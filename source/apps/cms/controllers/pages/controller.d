module apps.cms.controllers.pages.controller;

import apps.cms;
@safe:

class DCMSPageController : DPageController {
  mixin(PageControllerThis!("CMSPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

        this
    .addChecks([
      SessionHasHTTPSessionCheck, SessionHasSiteCheck, // Check appSesssion
      DatabaseHasSessionsCheck, DatabaseHasSitesCheck // Check database
    ]);
  }

  mixin(OProperty!("string", "entityName"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSPageController~":DCMSPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }
    
    if (database) {
      auto blogs = database["uim", "cms_sites"].findMany;
      auto docus = database["uim", "cms_docus"].findMany;
      auto glossary = database["uim", "cms_glossary"].findMany;
      auto news = database["uim", "cms_news"].findMany;
      auto links = database["uim", "cms_links"].findMany;
    }    
  }

  override void afterResponse(STRINGAA options = null) {
    // debugMethodCall(moduleName!DCMSPageController~":DCMSPageController::afterResponse");
    super.afterResponse(options);
  }

}
mixin(PageControllerCalls!("CMSPageController"));

version(test_uim_cms) { unittest {
    assert(new DCMSPageController);
    assert(CMSPageController);
  }
} 