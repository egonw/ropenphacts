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

smiles2uri <- function(server=NA, key=NA, appid=NA, smiles) {
	if (exists("getOpenPHACTSConfig")) {
		config = getOpenPHACTSConfig()
		if (is.na(server)) server = config$server
		if (is.na(key)) key = config$key
		if (is.na(appid)) appid = config$appid
	}
	if (is.na(server)) stop("You must provide an Open PHACTS server.")
	if (is.na(appid)) stop("You must provide an Open PHACTS API app ID.")
	if (is.na(key)) stop("You must provide an Open PHACTS API app key.")

	results <- .jcall(
		"com/github/egonw/ropenphacts/RHelper",
		"S",
		"smiles2uri",
                server, appid, key, smiles
	)
        store = rrdf::fromString.rdf(results, "TURTLE")
	query = paste(
		"PREFIX foaf: <http://xmlns.com/foaf/0.1/> ",
		"SELECT ?uri WHERE {",
		" ?concept foaf:primaryTopic ?uri .",
		"}"
	)
	results = rrdf::sparql.rdf(store, query);
	if (nrow(results) < 1) return(0);
	return(results[1,1]);
}
