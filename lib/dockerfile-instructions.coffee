module.exports = instructions = [
  {
    snippet: 'FROM ${1:image}:${2:tag}'
    type: 'function'
  }
  {
    snippet: 'MAINTAINER ${2:name}'
    type: 'function'
  }
  {
    snippet: 'RUN ${1:command}'
    type: 'function'
  }
  {
    snippet: 'CMD ${1:command}'
    type: 'function'
  }
  {
    snippet: 'LABEL ${1:key}=${2:value}'
    type: 'function'
  }
  {
    snippet: 'EXPOSE ${1:port}'
    type: 'function'
  }
  {
    snippet: 'ENV ${1:key}=${2:value}'
    type: 'function'
  }
  {
    snippet: 'ADD ${1:src} ${2:dest}'
    type: 'function'
  }
  {
    snippet: 'COPY ${1:src} ${2:dest}'
    type: 'function'
  }
  {
    snippet: 'ENTRYPOINT ${1:command}'
    type: 'function'
  }
  {
    snippet: 'VOLUME [${1:"/data"}]'
    type: 'function'
  }
  {
    snippet: 'USER ${1:user}'
    type: 'function'
  }
  {
    snippet: 'WORKDIR ${1:dir}'
    type: 'function'
  }
  {
    snippet: 'ONBUILD ${1:instruction}'
    type: 'function'
  }
]
