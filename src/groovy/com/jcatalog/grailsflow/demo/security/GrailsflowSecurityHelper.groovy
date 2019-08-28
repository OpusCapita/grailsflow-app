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

package com.jcatalog.grailsflow.demo.security

import com.jcatalog.grailsflow.security.SecurityHelper
import grails.util.Holders
/**
 * GrailsflowSecurityHelper class is the grailsflow simple implementation
 * of SecurityHelper interface.
 *
 * @author Stephan Albers
 * @author July Karpey
 */

class GrailsflowSecurityHelper implements SecurityHelper {

    Boolean isControllerAccessible(session) {
        getUser(session) != null
    }

    String getUser(session) {
        session.user
    }

    @Override
    List<String> getUsers(Object session) {
        return [getUser(session)]
    }

    List<String> getUserRoles(session) {
        return [Holders.grailsApplication.getClassForName("User").findWhere(username: session.user)?.role]
    }

    List<String> getUserGroups(session) {
        return []
    }

    List<String> getCustomUserAuthorities(session) {
        return []
    }
}