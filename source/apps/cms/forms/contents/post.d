module uim.cms.views.components.forms.contents.post;

import uim.cms;
@safe:

class DCMSXPostFormContent : DEntityFormContent {
  mixin(ViewComponentThis!("CMSXPostFormContent"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .crudMode(CRUDModes.Read)
    .addFields(["private", "maintitle", "subtitle", "keywords", "image", "summary", "themes", "text"])
    .inputHandler(CMSXFormInputHandler);   }

/*   override DH5Obj[] formGroup(string field, bool readonly, STRINGAA options = null) {
    if (entity) {
      switch(field) {
        case "private": return CMSXFormGroupPrivate(form).entity(entity).toH5(options);
        case "maintitle": return CMSXFormGroupMainTitle(form).entity(entity).toH5(options);
        case "subtitle": return CMSXFormGroupSubTitle(form).entity(entity).toH5(options);
        case "keywords": return CMSXFormGroupKeywords(form).entity(entity).toH5(options);
        case "image": return CMSXFormGroupImage(form).entity(entity).toH5(options);
        case "summary": return CMSXFormGroupSummary(form).entity(entity).toH5(options);
        case "text": return CMSXFormGroupText(form).entity(entity).toH5(options);
        case "themes": return CMSXFormGroupTheme(form).entity(entity).toH5(options);
        default: return super.formGroup(field, readonly, options); // get previous defined formgroups
    }}
    return null;
  } */
}
mixin(ViewComponentCalls!("CMSXPostFormContent"));
