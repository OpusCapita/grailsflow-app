grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text-plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      pdf: 'application/pdf',
                      rtf: 'application/rtf',
                      excel: 'application/vnd.ms-excel',
                      ods: 'application/vnd.oasis.opendocument.spreadsheet',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]
//grails.converters.json.pretty.print = true
grails.converters.json.default.deep = true
// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

//if(System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
//}

// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true

// Bootstrap
grails.plugins.twitterbootstrap.fixtaglib = true

// configuring host for email sending
grails.mail.host = "mail.scand"
grails.mail.default.from="server@grailsflow.com"

environments {
	test {
	  grails.mail.disabled=true
	}
}

grails.databinding.trimStrings = true
grails.databinding.convertEmptyStringsToNull = true

// configuring Scheduler

// NodeActivarorJob
//grailsflow.scheduler.nodeActivator.autoStart = false    // disable auto starting for Engine Job
grailsflow.scheduler.nodeActivator.startDelay = 60000         // starts in one minute after application startup
grailsflow.scheduler.nodeActivator.repeatInterval = 15000     // executes every 15 seconds

// DueDateJob
// grailsflow.scheduler.nodeDueDate.autoStart = true    // disable auto starting for Engine Job
grailsflow.scheduler.nodeDueDate.repeatInterval = 600000       // executes every minute

// EmailEvents
grailsflow.scheduler.eventsEmailCheck.autoStart = false    // enabled by default
grailsflow.scheduler.eventsEmailCheck.startDelay = 60000   // executes every minute
grailsflow.scheduler.eventsEmailCheck.repeatInterval = 60000 // executes every minute

// EmailEvents
//grailsflow.scheduler.clusterChecker.autoStart = false    // enabled by default
//grailsflow.scheduler.clusterChecker.startDelay = 10000   //
//grailsflow.scheduler.clusterChecker.repeatInterval = 5000 //

// configuring host for getting events email
grailsflow.events.mail.enabled=false
grailsflow.events.mail.address="masha@mail.scand"
grailsflow.events.mail.host="mail.scand"
grailsflow.events.mail.account="masha"
grailsflow.events.mail.password="masha"

// configuring i18n additional locations
// TODO: remove deprecated usage of Holders.grailsApplication with
// 'grailsApplication.isWarDeployed()' after fixing bug
// http://jira.grails.org/browse/GRAILS-8673
if (grails.util.Holders.grailsApplication?.warDeployed) {
  grailsflow.i18n.locations = ["WEB-INF/grails-app/i18n/"]
} else {
  grailsflow.i18n.locations = ["file:${grails.util.BuildSettingsHolder.settings?.resourcesDir?.path}/grails-app/i18n/"]
}

// configuring nodeActivator comparator (default variant is sorting by date desc)
 //  grailsflow.nodeActivator.comparator =  { def node1, def node2 ->
 //      return node1.nodeID <=> node2.nodeID
 //  }

// log4j configuration
log4j = {

  appenders {
    console name:'stdout', layout:pattern(conversionPattern: '[%r] %c{2} %m%n')
    rollingFile name:'rollingfile', maxFileSize:52428800, file:"grailsflow.log", maxBackupIndex:10, layout:pattern(conversionPattern: '%d [%t] %-5p (%c) - %m%n')
  }
  
	root {
	  info 'stdout','rollingfile'
	  additivity = true
	}  

  error	 "org.springframework.aop.framework.Cglib2AopProxy", 
         "org.hibernate.cache.UpdateTimestampsCache"

  debug	 "com.jcatalog.grailsflow",
  	     "grails.app.service",
	     "grails.app.controller",
	     "grails.app.task",
         "grails.app.jobs" //,
        // 'org.hibernate.SQL'

  // trace 'org.hibernate.type'


}

environments {
  development {
    /* runtime reload gsp pages */
    grails.gsp.enable.reload = true
  }
} 

// The default codec used to encode data with ${}
grails.views.default.codec="none" // none, html, base64
grails.views.gsp.encoding="UTF-8"
grails.converters.encoding="UTF-8"


grails.resources.modules = {
    coreapp {
        resource url:'/css/default.css'
        resource url:'/css/layout.css'
        resource url: [dir:'images', file:'application.ico']
    }

    searchapp {
        resource url:'/css/search.css'
    }
}
grailsflow.clusterChecker.lockExpiredInterval = "60000"
/* grailsflow.customizedDueDate = { Date dueDate ->
    Calendar date = Calendar.getInstance()
    date.setTime(dueDate)
    if (date.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY) {
        date.add(Calendar.DATE, 4)
        return date.time
    } else if (date.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY){
        date.add(Calendar.DATE, 3)
        return date.time
    } else return date.time
}

*/

grailsflow.HolidayRequest.customizedDueDate = { Date dueDate ->
    Calendar date = Calendar.getInstance()
    date.setTime(dueDate)
    if (date.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY) {
        date.add(Calendar.DATE, 2)
        return date.time
    } else if (date.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY){
        date.add(Calendar.DATE, 1)
        return date.time
    } else return date.time
}