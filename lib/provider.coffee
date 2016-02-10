instructions = require './dockerfile-instructions'

module.exports = dockerAutocompleteProvider =

  selector: '.source.dockerfile'

  getSuggestions: ({prefix}) ->
    if prefix.indexOf '(' isnt -1 or prefix.indexOf '[' isnt -1
      suggestions = []
    else
      suggestions = [@replacePrefix instruction, prefix for instruction in instructions when instruction.snippet.match prefix][0]

    return new Promise (resolve) =>
      resolve(suggestions)

  replacePrefix: (instruction, prefix) ->
    instruction.replacementPrefix = prefix
    return instruction
