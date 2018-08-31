\name{mapUri}
\alias{mapUri}
\title{
Map one URI to other URIs
}
\description{
Map one URI to other URIs.
}
\usage{
mapUri(server=NA, key=NA, appid=NA, uri)
}
\arguments{
  \item{server}{
The Open PHACTS Linked Data API server.
}
  \item{key}{
The app key used for authentication.
}
  \item{appid}{
The app ID used for authentication.
}
  \item{uri}{
The URI for which mappings are looked up.
}
}
\value{
The response of the server.
}
\author{
Egon Willighagen
}
\examples{
mapUri(
  server="https://beta.openphacts.org/2.2/", key="4f96300d4516f706fbd75db7f9ad4b4b", appid="c9a77432",
  uri="http://identifiers.org/ensembl/ENSG00000100030"
)
}
\keyword{ URI }
\keyword{ mapping }
