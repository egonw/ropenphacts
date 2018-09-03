\name{interactionsForEntityCount}
\alias{interactionsForEntityCount}
\title{
Returns a number of directed interactions for the given biological entity.
}
\description{
Returns a number of URIs of directed interactions with the given biological entity and the source and target
entity of that interaction.
}
\usage{
interactionsForEntityCount(server=NA, key=NA, appid=NA, uri)
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
the URI of the biological entity for which the interactions should be returned
}
}
\value{
The number of interactions.
}
\author{
Egon Willighagen
}
\keyword{ interaction }
