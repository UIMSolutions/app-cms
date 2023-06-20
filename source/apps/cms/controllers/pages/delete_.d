/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.cms.controllers.pages.delete_;

import apps.cms;
@safe:

class DCMSDeletePageController : DPageController {
  mixin(ControllerThis!("CMSDeletePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSDeleteView(this));
  }

  /*   this(string jsPath, string myPath, string myEntities, string myEntity, string myCollectionName) { super(); 
    this
    .jsPath(jsPath).pgPath(myPath).entitiesName(myEntities).entityName(myEntity).collectionName(myCollectionName)
    .title("UIM!CMS > "~myEntities~" > Löschen")
    .checks([mySessionExistsCheck, mySessionHasSessionCheck, mySessionHasSiteCheck])
    .header(
      APPDeletePageHeader
      .rootPath(pgPath)// .mainTitle(myEntities)// .subTitle("Löschen "~myEntity)
      .breadcrumbs(BS5BreadcrumbList(["breadcrumb-arrows"])
        .link(["href":"/"], "UIM!CMS")
        .link(["href":pgPath], myEntities)
        .item(["active"], ["aria-current":"page"], H5A(["href":"#"], "Löschen"))));

    this.scripts.addLinks(        
      "/js/apps/"~jsPath~"/entity.js",
      "/js/apps/"~jsPath~"/delete.js");

    this.scripts.addContents(editorSummary~editorText);
  }
 */  unittest {
    version(test_uim_cms) {
      /// TODO
    }}

   override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DCMSBlogsUpdatePageController~":DCMSBlogsUpdatePageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    auto mySession = sessionManager.session(options);
    debug writeln("In DCMSCreateDCMSCreatePageControllerAction: mySession "~mySession.id.toString);
    if (mySession.isNull) return;
    
    if (auto tenant = database[mySession.site]) {
      debug writeln("In DCMSCreatePageController: tenant "/* ~tenant.name */);

      if (auto collection = tenant[collectionName]) {
        debug writeln("In DCMSCreatePageController: collection "~collectionName);

        auto entityId = options.get("entity_id", options.get("id", options.get("entityId", null)));
        if (entityId.isUUID) {  
          if (auto entity = collection.findOne(UUID(entityId))) {
            if (auto entityView = cast(DEntityCRUDView)this.view) {
              entityView
                .entity(entity)
                .crudMode(CRUDModes.Delete)
                .rootPath(this.rootPath)
                .readonly(true);
            }
          }
        }
      }
    }
  }
}
mixin(ControllerCalls!("CMSDeletePageController"));