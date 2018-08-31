library(ropenphacts)
context("Mappings")

test_that("we get an interaction count for AKT2", {
  count = interactionsForEntityCount(server="https://beta.openphacts.org/2.2/",
    appid="c9a77432", key="4f96300d4516f706fbd75db7f9ad4b4b",
    "http://identifiers.org/ensembl/ENSG00000105221"
  )
})

test_that("we get an interaction count for AKT2", {
  interactions = interactionsForEntityList(server="https://beta.openphacts.org/2.2/",
    appid="c9a77432", key="4f96300d4516f706fbd75db7f9ad4b4b",
    "http://identifiers.org/ensembl/ENSG00000105221"
  )
})

