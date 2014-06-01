grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)

grails.work.dir = "target"

grails.project.war.file = "${appName}-${appVersion}.war"

grails.plugin.location.'grailsflow-core' = '../grailsflow-core-plugin'

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
    inherits "global"
    log "warn"

    repositories {
        inherits true
        grailsPlugins()
        grailsHome()

        if (grailsSettings.config.jcatalog.mavenLocal) {
            mavenLocal grailsSettings.config.jcatalog.mavenLocal
        }
        if (grailsSettings.config.jcatalog.mavenCentral) {
            mavenRepo grailsSettings.config.jcatalog.mavenCentral
        }

        grailsCentral()
        mavenCentral()
        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        mavenRepo "http://repository.codehaus.org"
        mavenRepo "http://download.java.net/maven/2/"
        mavenRepo "http://repository.jboss.com/maven2/"
    }

    dependencies {
        runtime ('mysql:mysql-connector-java:5.1.6')
    }
    
    plugins {
        // plugins for the build system only
        build ":tomcat:7.0.47"
        runtime ":hibernate:3.6.10.6" // or ":hibernate4:4.1.11.6"

        runtime(":resources:1.2.8")
        runtime(':mail:1.0.5')
    }
}
