# react-phrase-shuffler-component
A ReactJS Phrase Shuffler Component

This component is intented primarily for use with rails-react. I am working on it to let it a generic one, but if you want to use it with Ruby on Rails it is ready to to.

To use just set-up react-rails just as demonstrated [https://github.com/reactjs/react-rails]

After, copy the phrase-shuffler.js.jsx.coffee to your app/assets/javascripts/components folder and then check to se if this folder it is being loaded at the asset pipeline. 

In your controller, just grab an array of string values from some model of your choice, store in a variable and use this variable to pass the values to the component's properties like that:

```html
<h2><%= react_component "PhraseShuffler", phrases: @phrases.to_a %></h2>
```

Warning: The component must be inside a bootstrap's hero tag and inside and H2 tag. If you want to change that, just change the code to look for what you want as seem bellow:
```javascript
fadeOut: ->
  titleElement = document.querySelector '.hero h2:last-child' #<-- CHANGE HERE
  ...

fadeIn: ->
  titleElement = document.querySelector '.hero h2:last-child' #<-- CHANGE HERE
  ...
```

## Compile the Coffeescript do a JavaScript file
In order to compile to a JavaScript file, just install the node coffescript compiler [https://www.npmjs.com/package/coffeescript-compiler] globally:

```bash
npm install -g coffeescript-compiler
```

Afeter, just type:

```bash
cake build
```

checkout the lib directory.

Happy Coding!
