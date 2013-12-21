# Copyright (C) 2013  Egon Willighagen <egon.willighagen@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details. 
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

mapUri <- function(server, key, appid, uri) {
	results <- .jcall(
		"com/github/egonw/ropenphacts/RHelper",
		"S",
		"mapUri",
                server, appid, key, uri
	)
        store = fromString.rdf(results, "TURTLE")
	query = paste(
		"PREFIX skos: <http://www.w3.org/2004/02/skos/core#> ",
		"SELECT ?match WHERE {",
		" ?concept skos:exactMatch ?match .",
		"}"
	)
	results = sparql.rdf(store, query)
	return(results)
}
