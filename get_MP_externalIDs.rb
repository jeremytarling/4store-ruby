require 'rubygems'
require '4store-ruby'

store = FourStore::Store.new 'http://www.topdrawersausage.net:9000/sparql/'

@output = store.select("
SELECT ?extId WHERE {
    ?guid <http://www.bbc.co.uk/ontologies/domain/externalId> ?extId
} LIMIT 10
")

puts @output

