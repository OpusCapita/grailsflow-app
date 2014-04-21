class UserBootStrap {
      
     def init = { servletContext ->
         if (grails.util.GrailsUtil.environment == 'test') return; 
         User.withSession {
             new User(username: "admin", password: "admin", role: "ADMIN").save()
             new User(username: "manager", password: "manager", role: "MANAGER").save()
             new User(username: "employee", password: "employee", role: "SIMPLE_USER").save()
             new User(username: "hr_user", password: "hr_user", role: "HR_USER").save()
         }
     }
     def destroy = {
     }
}