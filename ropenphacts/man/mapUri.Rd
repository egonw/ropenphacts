\name{mapUri}
\alias{mapUri}
\title{
Map one URI to other URIs
}
\description{
Map one URI to other URIs.
}
\usage{
mapUri(
  server="https://beta.openphacts.org/", key=0, appid=0,
  uri="http://identifiers.org/ensembl/ENSG00000100030"
)
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
\keyword{ URI }
\keyword{ mapping }
