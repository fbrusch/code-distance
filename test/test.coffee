assert = require 'assert'

distance = require '../distance.coffee'

codeEmpty = []
code0 = ["int","main","(",")"]

code1 = ["int","main","(",")"]
code2 = ["int","main","(",")"]

code3 = ["int","main","(",")"]
code4 = ["int","main","(",";",")"]

code5 = ["int","main","(","prova",")"]
code6 = ["float","main","(",";",")"]


describe 'first empty test distance', ->
    it 'should be 4', ->
        assert.equal distance(codeEmpty,code0), 4

describe 'second empty test distance', ->
    it 'should be 4', ->
        assert.equal distance(code0,codeEmpty), 4

describe 'simplest test distance', ->
    it 'should be 0', ->
        assert.equal distance(code1,code2), 0

describe 'simple test distance', ->
    it 'should be 1', ->
        assert.equal distance(code3,code4), 1


describe 'not so simple test distance', ->
    it 'should be 2', ->
        assert.equal distance(code5,code6), 2