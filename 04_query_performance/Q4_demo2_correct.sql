SELECT ?human ?humanLabelz ?spouse ?spouseLabelz WHERE {
  ?human wdt:P31 wd:Q5 .

  OPTIONAL {
    ?spouse wdt:P26 ?human .
    OPTIONAL {
      ?spouse rdfs:label ?spouseLabelz .
      FILTER (lang(?spouseLabelz) = 'en')
    }
  }

  OPTIONAL {
    ?human rdfs:label ?humanLabelz .
    FILTER (lang(?humanLabelz) = 'en')
  }
}
LIMIT 20
