assert = require 'assert'

distance = require '../distance.coffee'


code1 = ["int","main","(",")"]
code2 = ["int","main","(",";",")"]

describe 'simple test distance', ->
    it 'should be 1', ->
        assert.equal distance(code1,code2), 1
