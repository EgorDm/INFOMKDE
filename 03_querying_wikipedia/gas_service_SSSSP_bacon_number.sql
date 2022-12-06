PREFIX gas: <http://www.bigdata.com/rdf/gas#>

SELECT DISTINCT ?depth ?item ?itemLabel WHERE {
  SERVICE gas:service {
    gas:program gas:gasClass "com.bigdata.rdf.graph.analytics.SSSP" ;
                gas:in wd:Q3454165 ; # Kevin Bacon
                gas:target wd:Q38111 ; # Leonardo Di Caprio
                gas:out ?item ;
                gas:out1 ?depth ;
                gas:linkType wdt:P161 ; # Cast member
                gas:traversalDirection "Undirected" ;
                gas:maxIterations 10 .
  }

  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}
ORDER BY ?depth
