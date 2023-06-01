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
  auto app = App
    .name("cmsApp");  

  with (app) {
    foreach(entityName; ["Blog", "Glossary", "LInk", "News", "Offer", "Theme"]) {      
      views.add("list"~entityName,View);
      views.add("create"~entityName, View);
      views.add("read"~entityName, View);
      views.add("update"~entityName, View);
      views.add("delete"~entityName, View);

      controllers.add("list"~entityName, PageController);
      controllers.add("create"~entityName, PageController);
      controllers.add("read"~entityName, PageController);
      controllers.add("update"~entityName, PageController);
      controllers.add("delete"~entityName, PageController);
    }
  }
  writeln("In App %s registered views:".format(app.name));
  writeln(app.views.keys);

  writeln("In App %s registered controllers:".format(app.name));
  writeln(app.controllers.keys);

  AppRegistry.register("apps.cms",  
    app
    .rootPath("/apps/cms")
    .addRoute(Route("", HTTPMethod.GET, IndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, IndexPageController)));
}