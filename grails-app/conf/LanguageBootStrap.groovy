class LanguageBootStrap {
      
     def init = { servletContext ->
         if (grails.util.GrailsUtil.environment == 'test') return;
         Language.withSession {
             new Language(languageId: "en", languageName: "English").save()
             new Language(languageId: "de", languageName: "German").save()
             new Language(languageId: "es", languageName: "Spanish").save()
         }
     }
     def destroy = {
     }
}