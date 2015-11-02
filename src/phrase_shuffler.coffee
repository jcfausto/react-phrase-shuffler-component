###
Phrase Shuffler React Component
Released under the MIT License
Date: 11-02-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/react-phrase-shuffler-component
###

@PhraseShuffler = React.createClass
  getInitialState: ->
    phrases: this.props.phrases
    lastIndex: -1

  nextIndex: ->
    this.state.lastIndex += 1
    this.state.lastIndex = 0 if this.state.lastIndex >= this.state.phrases.length
    this.state.lastIndex

  fadeOut: ->
    titleElement = document.querySelector '.hero h2:last-child'
    titleElement.style.opacity = 0
    setTimeout this.fadeIn, 250

  fadeIn: ->
    titleElement = document.querySelector '.hero h2:last-child'
    titleElement.innerHTML = this.state.phrases[this.nextIndex()]
    titleElement.style.opacity = 1
    setTimeout this.fadeOut, 2750

  shuffle: ->
    # Shuffle phrases in the array
    phrases_count = this.state.phrases.length

    while phrases_count
      random_index = Math.floor(Math.random() * phrases_count)
      random_phrase = this.state.phrases[--phrases_count]
      this.state.phrases[phrases_count] = this.state.phrases[random_index]
      this.state.phrases[random_index] = random_phrase

  start: ->
    #Shuffles the phrases array
    this.shuffle()
    #Trigger the fadeIn to start shuffling
    this.fadeIn()

  render: ->
    #Won't do nothing if there is no phrases provided.
    this.start() if this.state.phrases.length > 0

    #All the rendering is dynamic, so here I don't outputs any html
    false
