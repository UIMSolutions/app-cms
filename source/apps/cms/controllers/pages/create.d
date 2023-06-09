/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.cms.controllers.pages.create;

import apps.cms;
@safe:

class DCMSCreatePageController : DPageController {
  mixin(ControllerThis!("CMSCreatePageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CMSCreateView(this));
  }
}
mixin(ControllerCalls!("CMSCreatePageController", "DCMSCreatePageController"));