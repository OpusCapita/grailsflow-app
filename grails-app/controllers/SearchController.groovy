
class SearchController extends GrailsFlowSecureController {

    def search = {
        def domainClass = params.domainClass
        def items = []
        if (domainClass) {
          try {
            def domain = grailsApplication.classLoader.loadClass(domainClass)
            items = domain.list()
          } catch (Exception e){
            log.error("Cannot access domain objects ${domainClass}")
          }
        }
        render(view: params.viewPage, model:[items: items, params: params])
    }

    def address = {
        def domainClass = params.domainClass
        def items = []
        if (domainClass) {
          try {
            def domain = grailsApplication.classLoader.loadClass(domainClass)
            items = domain.list()
          } catch (Exception e){
            log.error("Cannot access domain objects ${domainClass}")
          }
        }
        render(view: 'address', model:[items:Address.list(), params: params])
    }

}