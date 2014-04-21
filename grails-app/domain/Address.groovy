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

/**
 * Address demo class. It is used for representation Address information.
 * The class is used in Grailsflow standard application to show how its possible to use
 * external search widget in auto-generated forms.
 *
 * @author Stephan Albers
 * @author July Karpey
 */
class Address {
    String addressID
    String name1
    String city

    static constraints = {
        addressID(unique:true)
        name1(nullable:true)
        city(nullable:true)
    }
}
