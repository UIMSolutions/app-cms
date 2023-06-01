module apps.cms;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

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
          auto myView = View;    
          this.views.add(crudName~entityName, myView);

          this.controllers.add(crudName~entityName, PageController.view(myView));
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