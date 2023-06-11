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

public {
  import langs.javascript;
}

public { // App packages
  import apps.cms.controllers;
  import apps.cms.helpers;
  import apps.cms.javascripts;
  import apps.cms.layouts;
  import apps.cms.routes;
  import apps.cms.scripts;
  import apps.cms.settings;
  import apps.cms.tests;
  import apps.cms.translations;
  import apps.cms.views;
}

@safe:
static this() { // Create and init app
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

          auto myController = PageController.view(myView);
          this.controllers.add(crudName~entityName, myController);

          auto myPath = ("/"~entityName~"/"~crudName).toLower;
          this.addRoute(Route(myPath, HTTPMethod.GET, myController));
          if (crudName == "create" || crudName == "update" || crudName == "delete") {
            auto myAction = CMSActionController;
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
                       .importTranslations()
      .addRoute(Route("", HTTPMethod.GET, CMSIndexPageController))
      .addRoute(Route("/", HTTPMethod.GET, CMSIndexPageController))
  );
}

@safe:
auto editorSummary = `const editorSummary = KothingEditor.create("entity_summary", {
  display: "block",
  width: "100%",
  height: "auto",
  popupDisplay: "full",
  katex: katex,
  toolbarItem: [
    ["undo", "redo"],
    ["font", "fontSize", "formatBlock"],
    ["bold", "underline", "italic", "strike", "subscript", "superscript", "fontColor", "hiliteColor"],
    ["outdent", "indent", "align", "list", "horizontalRule"],
    ["link", "table", "image", "audio", "video"],
    ["lineHeight", "paragraphStyle", "textStyle"],
    ["showBlocks", "codeView"],
    ["math"],
    ["preview", "print", "fullScreen"],
    ["save", "template"],
    ["removeFormat"],
  ],
  templates: [
    {
      name: "Template-1",
      html: "<p>HTML source1</p>",
    },
    {
      name: "Template-2",
      html: "<p>HTML source2</p>",
    },
  ],
  charCounter: true,
});`;

auto editorText = `const editorText = KothingEditor.create("entity_text", {
  display: "block",
  width: "100%",
  height: "auto",
  popupDisplay: "full",
  katex: katex,
  toolbarItem: [
    ["undo", "redo"],
    ["font", "fontSize", "formatBlock"],
    ["bold", "underline", "italic", "strike", "subscript", "superscript", "fontColor", "hiliteColor"],
    ["outdent", "indent", "align", "list", "horizontalRule"],
    ["link", "table", "image", "audio", "video"],
    ["lineHeight", "paragraphStyle", "textStyle"],
    ["showBlocks", "codeView"],
    ["math"],
    ["preview", "print", "fullScreen"],
    ["save", "template"],
    ["removeFormat"],
  ],
  templates: [
    {
      name: "Template-1",
      html: "<p>HTML source1</p>",
    },
    {
      name: "Template-2",
      html: "<p>HTML source2</p>",
    },
  ],
  charCounter: true,
});`;
