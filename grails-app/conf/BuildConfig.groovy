grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)

grails.work.dir = "target"

grails.project.war.file = "${appName}-${appVersion}.war"

grails.plugin.location.'grailsflow' = '../grailsflow-core-plugin'

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits( "global" ) {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        if (grailsSettings.config.jcatalog.mavenLocal) {
            mavenLocal grailsSettings.config.jcatalog.mavenLocal
        }
        if (grailsSettings.config.jcatalog.mavenCentral) {
            mavenRepo grailsSettings.config.jcatalog.mavenCentral
        }

        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenCentral()
        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        mavenRepo "http://repo.grails.org/grails/core"
    }

    dependencies {
        runtime ('mysql:mysql-connector-java:5.1.6')
        compile ('com.sdicons.jsontools:jsontools-core:1.7',
                'commons-httpclient:commons-httpclient:3.0.1',
                'commons-beanutils:commons-beanutils:1.9.2',
                'javax.validation:validation-api:1.1.0.Final')
        runtime ('javax.mail:mail:1.4',
                'org.hibernate:hibernate-validator:5.0.3.Final',
                'javax.activation:activation:1.1',
                'org.apache.ant:ant:1.7.1',
                'org.apache.ant:ant-launcher:1.7.1')
    }
    
    plugins {
        // plugins for the build system only
        build   ":tomcat:7.0.55"
        runtime ":hibernate:3.6.10.18"
        runtime ":resources:1.2.8"
        runtime ":mail:1.0.5"

        compile ":twitter-bootstrap:3.3.1"
    //    compile ":grailsflow:1.6"

        runtime(':jquery:1.11.1',
                ':jquery-ui:1.10.4')
        compile ":export:1.6"
        compile ":quartz:1.0.1"
    }
}
