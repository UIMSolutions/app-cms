module uim.cms.scripts.glossary.create;

import uim.cms;
@safe:
import uim.cms.scripts.glossary;

auto createEntity() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["entity_theme"])~
    "setThemes();"~
    jsCreateEntity();

}

unittest {
  auto f = File("../../PUBLIC/js/apps"~myUrl~"/create.js", "w"); // open for writing
  f.write(createEntity);
}
