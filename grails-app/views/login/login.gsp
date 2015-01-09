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
<!DOCTYPE html>
<html>
  <head>
    <meta name="description" content="login"></meta>
    <link rel="shortcut icon" href="${g.resource(dir:'images',file:'application.ico')}"/>
    <link rel="stylesheet" href="${g.resource(dir:'css',file:'layout.css')}"></link>
    <link rel="stylesheet" href="${g.resource(dir:'css',file:'default.css')}"></link>
    <link rel="stylesheet" href="${g.resource(dir:'css/login',file:'login.css')}"></link>
    <gf:messageBundle bundle="login" var="login"/>
    <gf:messageBundle bundle="application" var="application_bundle"/>

    <r:require modules="bootstrap"/>


    <title>${login['title.login']}</title>
    <r:layoutResources/>
  </head>

  <body>
    <div class="container">

      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-12">
          <div class="navbar">
            <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
                <a class="brand" href="http://grailsflow.org/"><img src="${g.resource(dir:'images/layout',file:'grailsflowLogo.jpg')}"/></a>
              </div>
              <div class="col-md-8 col-lg-8 col-xs-8 col-sm-8">
                <span class="pull-right">
                  <a href="http://jcatalog.github.io/grailsflow-core-plugin/">Help</a>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-12">
          <table border="0px" cellspacing="0" cellpadding="0" width="100%" height="80%">
            <tr>
              <td style="height: 380px; width: 100%" valign="center">
                <div align="center">
                  <!-- possible error messages -->
                  <g:if test="${flash.message}">
                    <div class="alert-danger">
                      ${flash.message}<br/><br/>
                    </div>
                  </g:if>
                  <div id="loginKey">
                    <!-- form itself -->
                    <g:form controller="login" action="login" method="post">
                      <table id="loginForm" cellspacing="0px">
                        <tr>
                          <td align="right">
                            <label for="loginName">${login['label.userName']}</label>
                          </td>
                          <td align="left">
                            <input type="text" class="transparency" name="loginName" id="loginName"/>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">
                            <label for="loginPassword">${login['label.userPassword']}</label>
                          </td>
                          <td align="left">
                            <input type="password" class="transparency" name="password" id="loginPassword"/>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">
                            <label for="language">${login['label.language']}</label>
                          </td>
                          <td align="left">
                            <g:select id="language" from="${Language.list() ? Language.list()*.languageId : [] }" value="${request.locale}" name="language" />
                          </td>
                        </tr>
                        <tr>
                          <td>&#160;</td>
                          <td align="left">
                            &#160;
                          </td>
                        </tr>
                        <tr>
                          <td>&#160;</td>
                          <td align="left">
                            <input type="submit" class="button" name="loginSubmit" id="loginSubmit" value="${login['command.login']}"/>
                          </td>
                        </tr>
                      </table>
                    </g:form>
                    <script>
                      document.getElementById("loginName").focus();
                    </script>
                  </div>
                </div>
                <div align="center">
                  <p style="color: #002276;">${login['label.loginHint']}</p>
                    <table valign="top">
                      <g:each var="user" in="${User.list()}">
                        <tr><td><b class="title">${login['label.userName']}:</b>&nbsp;"${user.username}",&nbsp;<b class="title">${login['label.userPassword']}:</b>&nbsp;"${user.password}"</td></tr>
                      </g:each>
                    </table>
                </div>
              </td>
            </tr>
          </table>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-12 footer">
          <g:render template="/layouts/grailsflow/footer"/>
        </div>
      </div>
    </div>

  </body>
</html>
