SELECT ?sLabel ?p ?oLabel {
    ?s ?p ?o .
    SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }

#  OPTIONAL {
#    ?o rdfs:label ?oLabel .
#    FILTER (lang(?oLabel) = 'en')
#  }
}
LIMIT 20
