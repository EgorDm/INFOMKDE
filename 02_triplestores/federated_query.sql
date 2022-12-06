# RUN HERE: https://triplydb.com/academy/pokemon/sparql/pokemon

PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dbp: <http://dbpedia.org/property/>
PREFIX pokemon: <https://triplydb.com/academy/pokemon/vocab>

SELECT ?id ?s ?o WHERE {
  ?s owl:sameAs ?alias .
  ?s pokemon:nationalNumber ?id .

  SERVICE <https://api.triplydb.com/datasets/DBpedia-association/dbpedia/services/dbpedia/sparql> {
    ?alias dbp:firstgame ?o
  }
}
ORDER BY ?id
LIMIT 100
