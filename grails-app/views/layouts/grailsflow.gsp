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

<!-- Do not forget to duplicate changes in main.gsp -->
<!DOCTYPE html>
<html>
  <head>                      
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
      <g:layoutTitle default="Grailsflow"/>
    </title>

    <gf:messageBundle bundle="grailsflow.common" var="common"/>
    <r:require modules="coreapp"/>
    <r:layoutResources/>
    <g:layoutHead/>
  </head>
  <body>

  <div>
    <g:if test="${!session.externalCall}">
      <div class="header">
        <g:render template="/layouts/grailsflow/header" model="['tab':'management']"/>
      </div>
    </g:if>
    <table border="0px" cellspacing="0" cellpadding="0" width="100%" height="380">
      <tbody>
        <tr>
          <td id="menu">
            <g:render template="/layouts/grailsflow/menu"/>
          </td>
          <td height="100%" width="100%" valign="top" id="fullContent">
             <g:layoutBody/>
             <r:layoutResources/>
          </td>
        </tr>
      </tbody>
    </table>
    <g:if test="${!session.externalCall}">
      <div class="footer">
        <g:render template="/layouts/grailsflow/footer"/>
      </div>
    </g:if>
</div>
</body>
</html>