module uim.cms.scripts.blogs.delete_;

import uim.cms;
@safe:
import uim.cms.scripts.blogs;

auto deleteEntity() {  
  return 
    jsLet(["myApi": "'"~myApi~"'", "myUrl": "'"~myUrl~"'"])~
    jsElementById(["entity_theme"])~
    jsDeleteEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps"~myUrl~"/delete.js", "w"); // open for writing
  f.write(deleteEntity);
}
