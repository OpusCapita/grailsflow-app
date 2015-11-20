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

<div class="panel panel-default">
    <div class="panel-heading"><g:message code="menu.header.useProcesses"/></div>
        <ul class="list-group">
          <li class="list-group-item"><g:link controller="process" action="showTypes" ><g:message code="menu.startProcesType"/></g:link></li>
          <li class="list-group-item"><g:link controller="process" action="list"><g:message code="menu.listProcesses"/></g:link></li>
          <li class="list-group-item"><g:link controller="process" action="showWorklist"><g:message code="menu.showWorklist"/></g:link></li>
          <li class="list-group-item"><g:link controller="process" action="showWorklist" params="['isEmbedded': true]" target="_new"><g:message code="menu.showEmbeddedWorklist"/></g:link></li>
        </ul>
</div>

<div class="panel panel-default">
    <div class="panel-heading"><g:message code="menu.header.administration"/></div>
    <ul class="list-group">
        <li class="list-group-item"><g:link controller="process" action="deleteProcesses"><g:message code="menu.deleteProcesses"/></g:link></li>
        <li class="list-group-item"><g:link controller="processDef" action="editTypes"><g:message code="menu.editProcesTypes"/></g:link></li>
        <li class="list-group-item"><g:link controller="analyse" action="analyseResponse"><g:message code="menu.analyseResponse"/></g:link></li>
        <li class="list-group-item"><g:link controller="document" action="showDirectoryContent"><g:message code="menu.showDocuments"/></g:link></li>
        <li class="list-group-item"><g:link controller="schedulerDetails" action="showSchedulerDetails"><g:message code="menu.viewSchedulerDetails"/></g:link></li>
    </ul>
</div>
