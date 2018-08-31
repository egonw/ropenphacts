\name{freetext}
\alias{freetext}
\title{
Do a free text search for concepts.
}
\description{
Do a free text search for concepts. It returns one or more Concept Wiki
URIs.
}
\usage{
freetext(server=NA, key=NA, appid=NA, query)
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
  \item{query}{
The term to do the free text search for.
}
}
\value{
The response of the server.
}
\author{
Egon Willighagen
}
\examples{
\dontrun{
freetext(
  server="https://beta.openphacts.org/2.2/", key="4f96300d4516f706fbd75db7f9ad4b4b", appid="c9a77432",
  query="water"
)
}
}
\keyword{ URI }
\keyword{ mapping }
