PREFIX gas: <http://www.bigdata.com/rdf/gas#>

# Construct a family tree for (Albert Einstein by following child relation)
SELECT ?parent ?parentLabel ?child ?childLabel ?depth WHERE {
  SERVICE gas:service {
       gas:program gas:gasClass "com.bigdata.rdf.graph.analytics.BFS" ;
                   gas:in wd:Q937 ; # Albert Einstein
                   gas:linkType wdt:P40 ; # Child of
                   gas:maxIterations 8;
                   gas:traversalDirection "Reverse";
                   gas:out ?parent ;
                   gas:out1 ?depth ;
                   gas:out2 ?child .
  }

  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
} order by ?depth
