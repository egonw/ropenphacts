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
freetext(
  server="https://beta.openphacts.org/1.3/", key="0", appid="0",
  query="water"
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
\keyword{ URI }
\keyword{ mapping }
