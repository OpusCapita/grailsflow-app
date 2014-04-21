class AddressDemoBootStrap {

     def init = { servletContext ->
         if (grails.util.GrailsUtil.environment == 'test') return;
         Address.withSession {
             new Address(addressID: "address1", name1: "German Address", city: "Berlin").save()
             new Address(addressID: "address2", name1: "English Square", city: "London").save()
             new Address(addressID: "address3", name1: "Belarus Films Corporation", city: "Minsk").save()
         }
     }
     def destroy = {
     }
}