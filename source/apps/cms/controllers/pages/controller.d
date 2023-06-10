module apps.cms.controllers.pages.cms;

import apps.cms;
@safe:

class DCMSCmsPageController : DCMSPageController {
  mixin(PageControllerThis!("CMSCmsPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

        this
    .addChecks([
      AppSessionHasSessionCheck, AppSessionHasSiteCheck, // Check appSesssion
      DatabaseHasSessionsCheck, DatabaseHasSitesCheck // Check database
    ]);
  }

  mixin(OProperty!("string", "entityName"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSCmsPageController~":DCMSCmsPageController::beforeResponse");
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
    // debugMethodCall(moduleName!DCMSCmsPageController~":DCMSCmsPageController::afterResponse");
    super.afterResponse(options);
  }

}
mixin(PageControllerCalls!("CMSCmsPageController"));

version(test_uim_cms) { unittest {
    assert(new DCMSCmsPageController);
    assert(CMSCmsPageController);
  }
} 