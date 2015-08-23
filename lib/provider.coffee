instructions = require './dockerfile-instructions'

module.exports = dockerAutocompleteProvider =

  selector: '.source.dockerfile'

  getSuggestions: ({prefix}) ->
    suggestions = [@replacePrefix instruction, prefix for instruction in instructions when instruction.snippet.match prefix][0]

    return new Promise (resolve) =>
      resolve(suggestions)

  replacePrefix: (instruction, prefix) ->
    instruction.replacementPrefix = prefix
    return instruction
