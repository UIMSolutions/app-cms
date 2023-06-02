module apps.cms;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public {
  import uim.core;
  import uim.bootstrap;
  import uim.html;
  import uim.oop;
  import uim.models;
  import uim.apps;
  import uim.servers;
  /* import uim.web; */
}

public {
  import web.controls;
}

public import langs.javascript;

public {
  import apps.cms.controllers;
  import apps.cms.helpers;
  import apps.cms.tests;
  import apps.cms.views;
}

@safe:
static this() {
  auto myApp = new class DApp {
    override void initialize(Json configSettings = Json(null)) {
      super.initialize(configSettings);

      this
        .name("cmsApp");  

      foreach(entityName; ["Blog", "Glossary", "Link", "News", "Offer", "Theme"]) {      
        foreach(crudName; ["list", "create", "read", "update", "update", "delete"]) {  
          auto myView = CMSView;
          myView
            .pageHeader(
              PageHeaderViewComponent
                .rootPath(rootPath)
                .title("CMS -> "~crudName~" -> "~entityName)
            )
            .pageBody(PageBodyViewComponent)
            .pageFooter(MVCPageFooterViewComponent)      
            .rootPath("/cms");
          
          this.views.add(crudName~entityName, myView);

          auto myController = APPPageController.view(myView);
          this.controllers.add(crudName~entityName, myController);

          auto myPath = ("/"~entityName~"/"~crudName).toLower;
          this.addRoute(Route(myPath, HTTPMethod.GET, myController));
          if (crudName == "create" || crudName == "update" || crudName == "delete") {
            auto myAction = ActionController;
            this.actions.add(crudName~entityName, myAction);
            this.addRoute(Route(myPath~"_action", HTTPMethod.POST, myAction));
          }
        }
      }

      writeln("In App %s registered views:".format(name));
      writeln(views.keys);

      writeln("In App %s registered controllers:".format(name));
      writeln(controllers.keys);
    }
  };

  AppRegistry.register("apps.cms",  
    myApp
      .rootPath("/apps/cms")
      .addRoute(Route("", HTTPMethod.GET, IndexPageController))
      .addRoute(Route("/", HTTPMethod.GET, IndexPageController))
  );
}