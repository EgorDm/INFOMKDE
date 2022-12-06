SELECT ?pred (COUNT(?person) AS ?count) WHERE {
#   hint:Query hint:optimizer "None".

    ?person wdt:P106 wd:Q901.
    ?person ?pred ?value.
    ?any2 wikibase:directClaim ?pred.
}
GROUP BY ?pred
HAVING ((COUNT(?person)) >= 1 )
ORDER BY DESC (COUNT(?person))
LIMIT 20
