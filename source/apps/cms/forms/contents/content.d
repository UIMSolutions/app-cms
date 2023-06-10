module apps.cms.views.components.forms.contents.content;

import apps.cms;
@safe:

class DCMSXFormContent : DEntityFormContent {
  mixin(ViewComponentThis!("CMSXFormContent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
    
    this
    .crudMode(CRUDModes.Read)
    .addFields(["private", "maintitle", "subtitle", "keywords", "image", "summary", "themes", "text"])
    .inputHandler(CMSXFormInputHandler); 
  }

/*   override DH5Obj[] formGroup(string field, bool readonly, STRINGAA options = null) {
    if (form) {
      this.crudMode(form.crudMode);

      if (auto formWithEntity = cast(IAPPWithEntity)form) {
        this.entity(formWithEntity.entity);
        if (entity) switch(field) {
          case "private": return CMSXFormGroupPrivate(form).entity(entity).toH5(options);
          case "maintitle": return CMSXFormGroupMainTitle(form).entity(entity).toH5(options);
          case "subtitle": return CMSXFormGroupSubTitle(form).entity(entity).toH5(options);
          case "keywords": return CMSXFormGroupKeywords(form).entity(entity).toH5(options);
          case "image": return CMSXFormGroupImage(form).entity(entity).toH5(options);
          case "summary": return CMSXFormGroupSummary(form).entity(entity).toH5(options);
          case "text": return CMSXFormGroupText(form).entity(entity).toH5(options);
          default: return super.formGroup(field, readonly, options);
        }
      }
    }
    return null;
  } */
}
mixin(ViewComponentCalls!("CMSXFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXFormContent.form(myForm));
}}
