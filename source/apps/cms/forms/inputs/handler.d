module uim.cms.views.components.forms.inputs.handler;

import uim.cms;
@safe:

class DCMSXFormInputHandler : DFormInputHandler {
  mixin(ViewComponentThis!("CMSXFormInputHandler"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addFormInputs([
        "private": CMSXPrivateFormInput, 
        "maintitle": CMSXMainTitleFormInput, 
        "subtitle": CMSXSubTitleFormInput, 
        "keywords": CMSXKeywordsFormInput, 
        "image": CMSXImageFormInput, 
        "summary": CMSXSummaryFormInput, 
        "text": CMSXTextFormInput, 
        "themes": CMSXThemesFormInput]);
  } 
}  
mixin(ViewComponentCalls!("CMSXFormInputHandler"));
