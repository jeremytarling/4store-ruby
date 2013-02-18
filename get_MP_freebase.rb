require 'rubygems'
require '4store-ruby'

store = FourStore::Store.new 'http://www.topdrawersausage.net:9000/sparql/'

@output = store.select("
SELECT ?name ?extId WHERE {
    ?s a <http://www.bbc.co.uk/ontologies/tag/TagConcept> ;
      <http://www.bbc.co.uk/ontologies/domain/canonicalName> ?name ;
      <http://www.bbc.co.uk/ontologies/domain/externalId> ?extId .
    ?extId <http://www.bbc.co.uk/ontologies/domain/externalIdType> <http://www.bbc.co.uk/things/external-id-types/freebase> .
} LIMIT 10
")

puts @output

