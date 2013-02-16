require 'rubygems'
require '4store-ruby'

store = FourStore::Store.new 'http://www.topdrawersausage.net:9000/sparql/'

@output = store.select("
SELECT DISTINCT ?mpName WHERE {
    ?guid <http://www.bbc.co.uk/ontologies/domain/canonicalName> ?mpName
} LIMIT 100
")

puts @output

