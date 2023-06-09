module uim.cms.scripts.app;

import uim.cms;
@safe:
import uim.cms.scripts.blogs;

auto cmsapp() {  
  return "";
}

unittest {
  auto f = File("../../PUBLIC/js/apps/cms/app.js", "w"); // open for writing
  f.write(cmsapp);
}