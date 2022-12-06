PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT
    ?iri
    (STR(?labelRaw) AS ?label)
    ?count
    ?pos
    ?type
    (STR(?descriptionRaw) AS ?description)
{
    {
        SELECT (?t as ?iri) (COUNT(?t) as ?count)
        { ?t ?p ?v }
        GROUP BY ?t HAVING (?count > {min_count})
    }

    BIND('subject' as ?pos)

    OPTIONAL {
        ?iri rdfs:label ?labelRaw.
        FILTER (STRSTARTS(lang(?labelRaw), 'en') || lang(?labelRaw)='')
    }
    OPTIONAL {
        ?iri rdfs:comment ?descriptionRaw.
        FILTER (STRSTARTS(lang(?descriptionRaw), 'en') || lang(?descriptionRaw)='')
    }
    OPTIONAL { ?iri rdfs:type ?type }
}
