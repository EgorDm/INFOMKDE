SELECT ?human ?humanLabel ?spouse ?spouseLabel WHERE {
  ?human wdt:P31 wd:Q5 .
  ?human wdt:P39 wd:Q11696 .

  OPTIONAL {
    ?spouse wdt:P26 ?human .
  }

  SERVICE wikibase:label { bd:serviceParam wikibase:language "en" }
}
LIMIT 20
