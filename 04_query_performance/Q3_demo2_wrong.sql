SELECT ?human ?humanLabel ?spouse ?spouseLabel WHERE {
  ?human wdt:P31 wd:Q5 .

  OPTIONAL {
    ?spouse wdt:P26 ?human .
  }

  SERVICE wikibase:label { bd:serviceParam wikibase:language "en" }
}
LIMIT 20
