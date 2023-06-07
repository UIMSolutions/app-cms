module apps.cms.views.read;

import apps.cms;
@safe:

class DCMSReadView : DCMSView {
  mixin(ViewThis!("CMSReadView"));

  mixin(OProperty!("DForm", "form"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .pageHeader(
        MVCReadPageHeader.rootPath(rootPath))
      .pageBody(PageBodyViewComponent)
      .pageFooter(MVCPageFooterViewComponent)
      .rootPath(rootPath); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ViewCalls!("CMSReadView", "DCMSReadView"));