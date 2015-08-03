/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import com.jcatalog.grailsflow.utils.AuthoritiesUtils
import com.jcatalog.grailsflow.utils.TranslationUtils

import com.jcatalog.grailsflow.model.process.BasicProcess

/**
 * Management controller class.
 * Used for managing views application common views (e.g. after user login).
 * When user log in system then he redirects to portal page.
 *
 * For example, when user logs in we can directly go to processes list menu item
 *
 * @author Stephan Albers
 * @author July Karpey
 */
class ManagementController extends GrailsFlowSecureController {
    def processManagerService
    def processWorklistService

    def index = {
        redirect(action: "portal", params: params)
    }

    def portal = {
        def authorities = getUserAuthorities(session)
        def lang = request.locale.language.toString()
        
        def processClasses = processManagerService.getSupportedProcessClasses().
            findAll { processClass ->
                def processAssignees = processClass.processAssignees.collect() { it.assigneeID.trim() }
                processAssignees.isEmpty() || !processAssignees.intersect(authorities).isEmpty()
            }.
            sort{a, b ->
                def labelA = TranslationUtils.getTranslatedValue(a.label, a.processType, lang)
                def labelB = TranslationUtils.getTranslatedValue(b.label, b.processType, lang)
                return labelA.compareTo(labelB) }
        if (params.offset) {
            params.offset = params.offset.toInteger()
        }
        params.max = params.max ? params.max.toInteger() : Integer.valueOf(5)

        def worklistTotal = processWorklistService.getWorklistSize(authorities, null)
        def processNodeList = [:]
        def processNodes = processWorklistService
                               .getWorklist(authorities,
                                 null, null, null, params.max, params.offset)
        processNodes.each {processNode ->
            def basic = processNode.process
            def processClass = processManagerService.getProcessClass(basic.type)

            if (processClass) {
                def availableEvents = []
                if (processNode.type.equals("Wait") ) {
                  processClass.nodes[processNode.nodeID]?.transitions?.each { transition ->
                    availableEvents << transition.event
                  }
                }
                processNodeList[processNode] = availableEvents
            }
        }

        [processClasses: (processClasses && processClasses.size() >4 ) ? processClasses[0..4] : processClasses,
        typesTotal: processClasses.size(), processNodeList: processNodeList, worklistTotal: worklistTotal, params: params]
    }
}

