describe 'provider', ->
  dockerCompletion = require '../lib/provider'

  it 'should not suggest when typing (', ->
    waitsForPromise ->
      dockerCompletion.getSuggestions(prefix: '(').then (suggestions)->
        expect(suggestions).toEqual([])

    waitsForPromise ->
      dockerCompletion.getSuggestions(prefix: ' (').then (suggestions) ->
        expect(suggestions).toEqual([])

  it 'should not suggest when typing [', ->
    waitsForPromise ->
      dockerCompletion.getSuggestions(prefix: '[').then (suggestions) ->
        expect(suggestions).toEqual([])

    waitsForPromise ->
      dockerCompletion.getSuggestions(prefix: ' [').then (suggestions) ->
        expect(suggestions).toEqual([])
