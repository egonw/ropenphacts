\name{smiles2uri}
\alias{smiles2uri}
\title{
Return a compound URI for the SMILES
}
\description{
This method searches the Open PHACTS database for a matching chemnical structure as represented by the
given SMILES and returns the URI of that compound.
}
\usage{
smiles2uri(server=NA, key=NA, appid=NA, smiles)
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
  \item{smiles}{
The SMILES of the compound to search in the database.
}
}
\value{
The URI of the matched chemical structure.
}
\author{
Egon Willighagen
}
\examples{
\dontrun{
smiles2uri(
  server="https://beta.openphacts.org/2.2/", key="4f96300d4516f706fbd75db7f9ad4b4b", appid="c9a77432",
  smiles="c1ccccc1C(=O)O"
)
}
}
\keyword{ URI }
\keyword{ SMILES }
\keyword{ chemical compound }
