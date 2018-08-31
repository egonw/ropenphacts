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

pharmacologyCount <- function(server=NA, key=NA, appid=NA, uri) {
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
		"pharmacologyCount",
                server, appid, key, uri
	)
        store = rrdf::fromString.rdf(results, "TURTLE")
	query = paste(
		"PREFIX opsapi: <http://www.openphacts.org/api#> ",
		"SELECT ?count WHERE {",
		" ?concept opsapi:compoundPharmacologyTotalResults ?count .",
		"}"
	)
	results = rrdf::sparql.rdf(store, query);
	if (nrow(results) < 1) return(0);
	return(results[1,1]);
}

pharmacologyList <- function(server=NA, key=NA, appid=NA, uri, page=1, size=5) {
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
		"pharmacologyList",
                server, appid, key, uri, as.integer(page), as.integer(size)
	)
	store = rrdf::fromString.rdf(results, "TURTLE")
	query = paste(
		"PREFIX chembl: <http://rdf.ebi.ac.uk/terms/chembl#> ",
		"PREFIX skos: <http://www.w3.org/2004/02/skos/core#> ",
		"SELECT ?activity_type ?activity_relation ?activity_value ?units WHERE {",
		" ?item chembl:standardType ?activity_type ;",
		"       chembl:standardRelation ?activity_relation ;",
		"       chembl:standardValue ?activity_value .",
		" OPTIONAL { ",
		"  ?item chembl:hasQUDT ?qudt_uri . ",
		"  ?qudt_uri skos:prefLabel ?units . ",
		" }",
		"}"
	)
	results = rrdf::sparql.rdf(store, query)
	return(results)
}

