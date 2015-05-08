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

<gf:messageBundle bundle="menu" var="menu_bundle"/>

<div class="panel panel-default">
    <div class="panel-heading">${menu_bundle['menu.header.useProcesses']}</div>
        <ul class="list-group">
          <li class="list-group-item"><g:link controller="process" action="showTypes" >${menu_bundle['menu.startProcesType']}</g:link></li>
          <li class="list-group-item"><g:link controller="process" action="list">${menu_bundle['menu.listProcesses']}</g:link></li>
          <li class="list-group-item"><g:link controller="process" action="showWorklist">${menu_bundle['menu.showWorklist']}</g:link></li>
          <li class="list-group-item"><g:link controller="process" action="showWorklist" params="['isEmbedded': true]" target="_new">${menu_bundle['menu.showEmbeddedWorklist']}</g:link></li>
        </ul>
</div>

<div class="panel panel-default">
    <div class="panel-heading">${menu_bundle['menu.header.administration']}</div>
    <ul class="list-group">
        <li class="list-group-item"><g:link controller="process" action="deleteProcesses">${menu_bundle['menu.deleteProcesses']}</g:link></li>
        <li class="list-group-item"><g:link controller="processDef" action="editTypes">${menu_bundle['menu.editProcesTypes']}</g:link></li>
        <li class="list-group-item"><g:link controller="analyse" action="analyseResponse">${menu_bundle['menu.analyseResponse']}</g:link></li>
        <li class="list-group-item"><g:link controller="document" action="showDirectoryContent">${menu_bundle['menu.showDocuments']}</g:link></li>
        <li class="list-group-item"><g:link controller="schedulerDetails" action="showSchedulerDetails">${menu_bundle['menu.viewSchedulerDetails']}</g:link></li>
    </ul>
</div>
