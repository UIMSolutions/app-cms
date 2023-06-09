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
}
mixin(ControllerCalls!("CMSDeletePageController", "DCMSDeletePageController"));