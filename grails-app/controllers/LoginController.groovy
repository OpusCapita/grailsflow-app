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
import org.springframework.web.servlet.support.RequestContextUtils as RCU;
import org.springframework.util.StringUtils
/**
 * Login controller class is used for security
 *
 * @author Stephan Albers
 * @author July Karpey
 */
class LoginController extends GrailsFlowSecureController {
    def index = {render(view: 'login')}
    def register = {}

    def login = {
        def user = User.findByUsernameAndPassword(params.loginName, params.password)
        if (user) {
            session.user = user.username
            session.setMaxInactiveInterval(3000)
            if (params.language) {
                RCU.getLocaleResolver(request)
                    .setLocale(request, response, StringUtils.parseLocaleString(params.language))
            }

            redirect(controller: "management", action: "portal")
        } else {
            flash.message = "Invalid Username or Password."
            render(view: 'login')
        }
    }

    def logout = {
        session.user = null
        redirect(action: index)
    }

}