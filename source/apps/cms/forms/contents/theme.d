module uim.cms.views.components.forms.contents.theme;

import uim.cms;
@safe:

class DCMSXThemeFormContent : DEntityFormContent {
  mixin(ViewComponentThis!("CMSXThemeFormContent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .crudMode(CRUDModes.Create)
    .fields([/* "active",  */"name", "display", "description", "maintitle", "subtitle", /* "keywords", */ "image", "summary", /* "themes", */ "text"]); 
  }

/*   override DH5Obj[] formGroup(string field, bool readonly, STRINGAA options = null) {
    if (form) {
      this.crudMode(form.crudMode);
    
      if (auto formWithEntity = cast(IAPPWithEntity)form) { 
        DCMSXTheme entity = cast(DCMSXTheme)formWithEntity.entity;
        if (entity) switch(field) {
          case "maintitle": return CMSXFormGroupMainTitle(form).entity(entity).toH5(options);
          case "subtitle":  return CMSXFormGroupSubTitle(form).entity(entity).toH5(options);
          case "image":     return CMSXFormGroupImage(form).entity(entity).toH5(options);
          case "summary":   return CMSXFormGroupSummary(form).entity(entity).toH5(options);
          case "themes":    return CMSXFormGroupTheme(form).entity(entity).toH5(options);
          case "text":      return CMSXFormGroupText(form).entity(entity).toH5(options);
          default: return super.formGroup(field, readonly, options); 
        }
      }
    }
    return null;
  } */
}
mixin(ViewComponentCalls!("CMSXThemeFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXThemeFormContent(myForm));
}}
