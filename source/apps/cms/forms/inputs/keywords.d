module uim.cms.views.components.forms.inputs.keywords;

import uim.cms;
@safe:

class DCMSXKeywordsFormInput : DFormInput {
  mixin(ViewComponentThis!("CMSXKeywordsFormInput"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
    .id("entity_keywords")
    .name("entity_keywords")
    .inputName("entity_keywords")
    .fieldName("keywords")
    .label("Stichworte")
    .placeholder("Stichworte mit # getrennt eingeben");
  }
  override DH5Obj[] toH5(STRINGAA options = null) { // hook
    super.toH5(options);
    if (hasError || "redirect" in options) { return null; }
    
    auto input = BS5InputText(id, ["name":inputName]);   
    if (_crudMode != CRUDModes.Create && entity) input.value(entity["keywords"].split(",").map!(a => a.strip).join(" #"));
    if (_crudMode == CRUDModes.Read || _crudMode == CRUDModes.Delete) input.attribute("readonly","readonly");
    
    return [
      BS5FormGroup(["row", "mb-1"],
        H5Label(["form-label col-2 col-form-label"], label),
        BS5Col(["col"], input))].toH5;
  }
}
mixin(ViewComponentCalls!("CMSXKeywordsFormInput"));

version(test_uim_cms) { unittest {
    // TODO Tests
}}