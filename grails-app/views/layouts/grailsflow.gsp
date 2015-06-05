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
<!DOCTYPE HTML>
<html>
  <head>                      
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10">
    <title>
      <g:layoutTitle default="Grailsflow"/>
    </title>

    <gf:messageBundle bundle="grailsflow.common" var="common"/>
    <r:require modules="grailsflow"/>
    <r:require modules="bootstrap"/>
    <r:require modules="font-awesome"/>

    <r:layoutResources/>
    <g:layoutHead/>

  </head>
  <body>

  <div class="container">
    <g:if test="${!session.externalCall}">
      <div class="row margin-bottom-10">
        <div class="col-md-12 col-lg-12 col-xs-12">
            <g:render template="/layouts/grailsflow/header" model="['tab':'management']"/>

        </div>
      </div>
    </g:if>

    <div class="row">
      <div class="col-md-2 col-lg-2 col-xs-2">
        <g:render template="/layouts/grailsflow/menu"/>
      </div>
      <div class="col-md-10 col-lg-10 col-xs-10">
        <g:layoutBody/>
        <r:layoutResources/>
      </div>
    </div>

    <g:if test="${!session.externalCall}">
      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-12 footer">
          <g:render template="/layouts/grailsflow/footer"/>
        </div>
      </div>
    </g:if>
</div>

</body>
</html>