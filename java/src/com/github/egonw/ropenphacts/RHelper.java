/* Copyright (C) 2013  Egon Willighagen <egon.willighagen@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details. 
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.github.egonw.ropenphacts;

import com.github.egonw.ops4j.*;

public class RHelper {

  // Mappings

  public static String mapUri(String server, String appID, String appKey, String uri)
  throws Exception {
    Mapping mapper = Mapping.getInstance(server, appID, appKey);
    return mapper.mapUri(uri);
  }

  // Concepts

  public static String freetext(String server, String appID, String appKey, String query)
  throws Exception {
    Concepts searcher = Concepts.getInstance(server, appID, appKey);
    return searcher.freetext(query);
  }

}