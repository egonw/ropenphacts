\name{interactionsForEntityList}
\alias{interactionsForEntityList}
\title{
Returns a list of directed interactions for the given biological entity.
}
\description{
Returns a list of URIs of directed interactions with the given biological entity and the source and target
entity of that interaction.
}
\usage{
interactionsForEntityList(server=NA, key=NA, appid=NA, uri, page=1, size=5)
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
  \item{page}{
The number of the next batch of results to return, where each batch has a particular size.
}
  \item{size}{
The size of this next batch.
}
}
\value{
The list of interactions.
}
\author{
Egon Willighagen
}
\keyword{ interaction }
