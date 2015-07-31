_ = require 'underscore'

distance = (codeTokens1, codeTokens2) ->
	
    if _.isEqual codeTokens1, codeTokens2
        return 0
    if codeTokens1.length is 0 or codeTokens2.length is 0
        return codeTokens1.length + codeTokens2.length
    
    v1 = []

    v0 = (i for i in [0..codeTokens2.length])

    for i in [0..codeTokens1.length-1]

        v1 = []
        v1[0] = i+1

        for j in [0..codeTokens2.length-1]
            cost = if codeTokens1[i] is codeTokens2[j] then 0 else 1
            v1[j + 1] = Math.min.apply @, [v1[j] + 1, v0[j + 1] + 1, v0[j] + cost]

        v0 = v1.slice(0)

    return v1[codeTokens2.length];

module.exports = distance