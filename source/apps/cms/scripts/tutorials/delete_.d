module uim.cms.scripts.tutorials.delete_;

import uim.cms;
@safe:
import uim.cms.scripts.tutorials;

auto deleteEntity() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["entity_tutorial"])~
    jsDeleteEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps"~myUrl~"/delete.js", "w"); // open for writing
  f.write(deleteEntity);
}
