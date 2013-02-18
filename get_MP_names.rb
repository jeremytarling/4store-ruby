require 'rubygems'
require '4store-ruby'

store = FourStore::Store.new 'http://www.topdrawersausage.net:9000/sparql/'

@output = store.select("
SELECT ?name ?guid WHERE {
    ?guid <http://www.bbc.co.uk/ontologies/domain/canonicalName> ?name .
} LIMIT 10
")

puts @output

