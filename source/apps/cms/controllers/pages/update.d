/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.cms.controllers.pages.update;

import apps.cms;
@safe:

class DCMSUpdatePageController : DPageController {
  mixin(ControllerThis!("CMSUpdatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSUpdateView(this));
  }
  /*   this(string jsPath, string myPath, string myEntities, string myEntity, string myCollectionName) { super(); 
    this
    .jsPath(jsPath).pgPath(myPath).entitiesName(myEntities).entityName(myEntity).collectionName(myCollectionName)
    .title("UIM!CMSX > "~myEntities~" > Bearbeiten")
    .checks([AppSessionExistsCheck, AppSessionHasSessionCheck, AppSessionHasSiteCheck])
    // .securityController(APPSecurityController(this))
    .header(
      APPEditPageHeader
      .rootPath(pgPath)// .mainTitle(myEntities)// .subTitle("Bearbeiten "~myEntity)
      .breadcrumbs(BS5BreadcrumbList(["breadcrumb-arrows"])
        .link(["href":"/"], "UIM!CMSX")
        .link(["href":pgPath], myEntities)
        .item(["active"], ["aria-current":"page"], H5A(["href":"#"], "Bearbeiten")))
    );

    this.scripts.addLinks(
      "/js/apps/"~jsPath~"/entity.js",
      "/js/apps/"~jsPath~"/edit.js");

    this.scripts.addContents(editorSummary~editorText);
  } */
  unittest {
    version(test_uim_cms) {
      /// TODO
    }}

  override void jsCode(STRINGAA reqParameters) {
    super.jsCode(reqParameters);

    // TODO  setThemes('`~sessionId~`', '');

    if (viewMode == ViewModes.JS) 
      addToPageScript(reqParameters,     
      `window.addEventListener('load', (event) => {
        document.getElementById("form").addEventListener("submit", event => {
          event.preventDefault();
          editorSummary.save();
          editorText.save();
          editEntity();
        })
      });`);
      else 
        addToPageScript(reqParameters,     
      `window.addEventListener('load', (event) => {
        document.getElementById("form").addEventListener("submit", event => {
          editorSummary.save();
          editorText.save();
        })
      });`); 
 
  }
  unittest {
    version(test_uim_cms) {
      /// TODO
    }}

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSXBlogsUpdatePageController~":DCMSXBlogsUpdatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    if (auto appSession = getAppSession(options)) {
      debug writeln("In DCMSXCreateDCMSXCreatePageControllerAction: appSession "~(appSession ? appSession.id : null));
      if (auto tenant = database[appSession.site]) {
        debug writeln("In DCMSXCreatePageController: tenant "/* ~tenant.name */);

        if (auto collection = tenant[collectionName]) {
          debug writeln("In DCMSXCreatePageController: collection "~collectionName);

          auto entityId = options.get("entity_id", options.get("id", options.get("entityId", null)));
          if (entityId.isUUID) {  
            if (auto entity = collection.findOne(UUID(entityId))) {
              if (auto entityView = cast(DEntityCRUDView)this.view) {
                entityView
                  .entity(entity)
                  .crudMode(CRUDModes.Update)
                  .rootPath(this.rootPath)
                  .readonly(false);
              }
            }
          }
        }
      }
    }
  }
}
mixin(ControllerCalls!("CMSUpdatePageController"));