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
public import uim.controls;
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
  AppRegistry.register("apps.cms",  
    App
    .name("cmsApp")
    .rootPath("/apps/cms")
    .addRoute(Route("", HTTPMethod.GET, IndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, IndexPageController)));
}