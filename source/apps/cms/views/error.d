module apps.cms.views.error;

import apps.cms;
@safe:

class DCMSErrorView : DCMSView {
  mixin(ViewThis!("CMSErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!CMSErrorView~":CMSErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("Error")
    ].toH5;
  }
}
mixin(ViewCalls!("CMSErrorView", "DCMSErrorView"));
