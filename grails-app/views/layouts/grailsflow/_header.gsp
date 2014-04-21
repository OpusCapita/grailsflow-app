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

<div id="header">
 <div id="supplierLogo"></div>
 <div class="title">
  <span id="appName">
    &nbsp;
  </span>
    <span id="userName" title="Current User">
      Current User: ${session.user}
    </span>
  </div>
  <div id="marketLogo"></div>
</div>

<div id="toolbar">
  <ul id="navlist">
    <li class="${tab =='management' ? 'selected': ''}"><g:link controller="management" action="portal">${msgsToolbar['tab.management']}</g:link></li>
  </ul>
</div>

<div id="iconbar">
  <a href="http://www.jcatalog.com/oss/grailsflow/">${application_bundle['command.help']}</a>
  <g:link controller ="login" action="logout">${application_bundle['command.logout']}</g:link>
</div>
<div id="stripe"></div>