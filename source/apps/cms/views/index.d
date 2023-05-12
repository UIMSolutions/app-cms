module apps.cms.views.index;

@safe:
import apps.cms;

class DCMSIndexView : DCMSView {
  mixin(ViewThis!("CMSIndexView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .pageHeader
        .title("CMS -> Index");
  }
}
mixin(ViewCalls!("CMSIndexView", "DCMSIndexView"));
