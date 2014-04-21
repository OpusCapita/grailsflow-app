import org.apache.commons.io.IOUtils
import grails.util.GrailsUtil

/**
 * Provides tags to display application information usefull for administration
 * such as build version and so on.
 *
 */
public class AdministrationTagLib {
   
    def applicationVersion = {
        def stream = getClass().classLoader.getResourceAsStream(
                "${grailsApplication.metadata['app.name']}.version")
        if (stream) {
            IOUtils.copy(stream, out)
        } else {
            // Application version information file is missing.
            out << """Module: ${grailsApplication.metadata['app.name']},
                    Build version: ${grailsApplication.metadata['app.version']},
                    ${GrailsUtil.getEnvironment()} mode."""
        }
    }
}
