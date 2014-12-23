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

<gf:messageBundle bundle="toolbar" var="msgsToolbar"/>
<gf:messageBundle bundle="application" var="application_bundle"/>

      <div class="navbar">
          <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
                  <a class="brand" href="http://grailsflow.org/"><img src="${g.resource(dir:'images/layout',file:'grailsflowLogo.jpg')}"/></a>
              </div>
              <div class="col-md-8 col-lg-8 col-xs-8 col-sm-8">
                 <span class="pull-right">Current User: ${session.user}</span><br/>
                 <span class="pull-right">
                      <a href="http://jcatalog.github.io/grailsflow-core-plugin/">${application_bundle['command.help']}</a>
                      <g:link controller ="login" action="logout">${application_bundle['command.logout']}</g:link>
                 </span>

              </div>
          </div>
          <div class="row">
              <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
                  <ul class="nav nav-tabs">
                      <li role="presentation" class="active"><g:link controller="management" action="portal">${msgsToolbar['tab.management']}</g:link></li>
                  </ul>
              </div>
          </div>
      </div>



 <!--div class="row homepanel">
    <div class="col-md-8 col-xs-8 col-lg-8"><div id="supplierLogo">&nbsp;</div></div>
    <div class="col-md-4 col-xs-4 col-lg-4" style="font-size: 12px; vertical-align: top; text-align: right; padding-top: 18px;">

      <span id="userName" title="Current User">
        Current User: ${session.user}
      </span>
      <div id="marketLogo"></div>                                               </div>
  </div>

 <div class="row homepanel" style="border-bottom: 1px solid rgb(217, 224, 243);">
    <div class="col-md-10 col-xs-10 col-lg-10 no-padding">
      <div id="toolbar" style="border-bottom: 0px;">
        <ul id="navlist">
          <li class="${tab =='management' ? 'selected': ''}"><g:link controller="management" action="portal">${msgsToolbar['tab.management']}</g:link></li>
        </ul>
      </div>
    </div>
    <div class="col-md-2 col-xs-2 col-lg-2">
      <div class="homepanel-link">
        <a href="http://www.jcatalog.com/oss/grailsflow/">${application_bundle['command.help']}</a>
        <g:link controller ="login" action="logout">${application_bundle['command.logout']}</g:link>
      </div>
    </div>
 </div>

 <div class="row">
    <div class="col-md-12 col-xs-12 col-lg-12"><div  id="stripe"></div></div>
  </div-->

