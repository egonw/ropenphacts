library(ropenphacts)
context("Mappings")

test_that("an Ensembl identifier gives mappings", {
  mappings = mapUri(server="https://beta.openphacts.org/2.2/",
    appid="c9a77432", key="4f96300d4516f706fbd75db7f9ad4b4b",
    "http://identifiers.org/ensembl/ENSG00000100030"
  )
})

