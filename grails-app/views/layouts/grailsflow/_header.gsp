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

      <div class="navbar">
          <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
                  <a class="brand" href="http://grailsflow.org/"><img src="${g.resource(dir:'images/layout',file:'grailsflowLogo.jpg')}"/></a>
              </div>
              <div class="col-md-8 col-lg-8 col-xs-8 col-sm-8">
                 <span class="pull-right">Current User: ${session.user}</span><br/>
                 <span class="pull-right">
                      <a href="http://jcatalog.github.io/grailsflow-core-plugin/"><g:message code="command.help"/></a>
                      <g:link controller ="login" action="logout"><g:message code="command.logout"/></g:link>
                 </span>

              </div>
          </div>
          <div class="row">
              <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
                  <ul class="nav nav-tabs">
                      <li role="presentation" class="active"><g:link controller="management" action="portal"><g:message code="tab.management"/></g:link></li>
                  </ul>
              </div>
          </div>
      </div>


