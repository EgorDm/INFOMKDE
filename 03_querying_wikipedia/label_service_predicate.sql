SELECT ?s ?pLabel ?o {
    ?s ?pDirect ?o .
    ?p wikibase:directClaim ?pDirect .
    SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}
LIMIT 20
