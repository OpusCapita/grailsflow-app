<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->

<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="layout" content="grailsflow"/>

   <title><g:message code="label.appTitle"/></title>
  </head>

  <body>
  <div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="menu.grailsManagement"/></div>
            <div class="panel-body">
                <p>If you use the Grailsflow demo application for the first time, please read the
                   <a href="http://grailsflow.org/about/firststeps-copy/">first steps</a>
                   document.
                </p>
                <p>You find more information about the main ideas behind Grailsflow
                   <a href="http://grailsflow.org/about">here</a>.
                </p>
                <p>Thank you for trying Grailsflow. We appreciate your feedback. See here
                   <a href="http://grailsflow.org/community">the community information</a>.
                </p>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="plugin.grailsflow.title.startProcess"/></div>
            <div class="panel-body">
                <img src="${g.resource(dir:'images/general',file:'warning16.gif')}"/>&nbsp;
                ${processClasses.size()}&nbsp;<g:message code="label.of"/>&nbsp;${typesTotal}&nbsp;
                <g:message code="message.processTypes.listed"/>

                <g:if test="${processClasses.size() < typesTotal}">
                  <g:message code="message.processTypes.reviewAll"/>&nbsp;
                  <g:link action="showTypes" controller="process">
                    <g:message code="menu.startProcesType"/>
                  </g:link>.
                </g:if>
            </div>
            <table class="table">
              <thead>
                <tr>
                  <th><g:message code="plugin.grailsflow.label.processType"/></th>
                  <th width="70%"><g:message code="plugin.grailsflow.label.description"/></th>
                  <th>&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <g:each in="${processClasses}" var="item" status="i">
                  <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                    <td><gf:translatedValue translations="${item.label}" default="${item.processType}"/></td>
                    <td><gf:translatedValue translations="${item.description}" default=""/></td>
                    <td>
                      <g:link action="startProcess" class="btn btn-sm btn-default" controller="processManagement" id="${item.processType}" title="${g.message(code: 'plugin.grailsflow.command.start')}"><g:message code="plugin.grailsflow.command.start"/></g:link>
                    </td>
                  </tr>
                </g:each>
              </tbody>
            </table>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="plugin.grailsflow.title.worklist"/></div>
            <g:if test="${worklistTotal}">
              <table class="table">
                 <thead>
                   <tr>
                      <th><g:message code="plugin.grailsflow.label.nodeID"/></th>
                      <th><g:message code="plugin.grailsflow.label.processType"/></th>
                      <th><g:message code="plugin.grailsflow.label.description"/></th>
                      <th><g:message code="plugin.grailsflow.label.status"/></th>
                      <th><g:message code="plugin.grailsflow.label.caller"/></th>
                      <th><g:message code="plugin.grailsflow.label.startedOn"/></th>
                      <th><g:message code="plugin.grailsflow.label.dueOn"/></th>
                    </tr>
                 </thead>
                 <tbody>
                   <g:each in="${processNodeList.keySet()}" var="node">
                        <tr>
                           <td><g:if test="${processNodeList[node]}">
                                 <g:link id="${node.id}" action="showNodeDetails" controller="process">
                                   ${node.nodeID}
                                 </g:link>
                               </g:if>
                               <g:else>
                                 ${node.nodeID}
                               </g:else>
                           </td>
                           <td>${node.process ? node.process.type: ''}</td>
                           <td>${node.description}</td>
                           <td>${node.status?.statusID}</td>
                           <td>${node.caller}</td>
                           <td><gf:displayDateTime value="${node.startedOn}"/></td>
                           <td><gf:displayDateTime value="${node.dueOn}"/></td>
                        </tr>
                   </g:each>
                 </tbody>
              </table>
              <g:if test="${worklistTotal > (grailsApplication.mainContext.maxResultSize)}">
                <div class="paginateButtons">
                  <g:paginate total="${worklistTotal}" action="portal"/>
                </div>
              </g:if>
            </g:if>
            <g:else>
              <div class="bs-callout bs-callout-info"><g:message code="plugin.grailsflow.message.noItems"/></div>
            </g:else>
        </div>
    </div>
  </div>

  </body>
</html>
