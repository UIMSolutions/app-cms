module uim.cms.views.components.forms.contents.tutorial;

import uim.cms;
@safe:

class DCMSXTutorialFormContent : DCMSXPostFormContent {
  mixin(ViewComponentThis!("CMSXTutorialFormContent"));

  /* override DH5Obj[] formGroup(string field, bool readonly, STRINGAA options = null) {
    if (form) {
      this.crudMode(form.crudMode);

      if (auto formWithEntity = cast(IAPPWithEntity)form) {
        auto entity = formWithEntity.entity;
        if (entity) switch(field) {
          case "maintitle": return CMSXFormGroupMainTitle(form).entity(entity).toH5(options);
          case "subtitle":  return CMSXFormGroupSubTitle(form).entity(entity).toH5(options);
          case "keywords":  return CMSXFormGroupKeywords(form).entity(entity).toH5(options);
          case "image":     return CMSXFormGroupImage(form).entity(entity).toH5(options);
          case "summary":   return CMSXFormGroupSummary(form).entity(entity).toH5(options);
          case "themes":    return CMSXFormGroupTheme(form).entity(entity).themes(form ? (cast(DCMSXPostForm)form).themes : null).toH5(options);
          case "text":      return CMSXFormGroupText(form).entity(entity).toH5(options);
      /*       auto entitys = repository.find("entitys").map!(a => CMSXTutorial(a)).array;
      , "readonly":"readonly", "value":entity.entity.toString], options
      DH5Obj[] options;
      options ~= cast(DH5Obj)H5Option(["value":"00000000-0000-0000-0000-000000000000"], "No entity");
      foreach(entity; entitys) {
        if (entity.entity == entity.id) options ~= H5Option(["selected":"selected", "value":entity.id.toString], entity.display);
        else options ~= H5Option(["value":entity.id.toString], entity.display);
      }
      results ~= BS5FormGroup(["row", "mb-1"],
        H5Label(["form-label col-2 col-form-label"], "Tutorial"),
        BS5Col(["col"], 
          H5Select("entity", ["form-select"], ["name":"entity_entity", "readonly":"readonly", "value":entity.entity.toString], options))); * /
          default: return super.formGroup(field, readonly, options); 
        }
      }
    }
    return null;
  } */
}
mixin(ViewComponentCalls!("CMSXTutorialFormContent"));

version(test_uim_cms) { unittest {
    assert(CMSXTutorialFormContent(myForm));
}}
