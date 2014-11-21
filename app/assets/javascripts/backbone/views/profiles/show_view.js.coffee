Student.Views.Profiles ||= {}

class Student.Views.Profiles.ShowView extends Backbone.View
  template: JST["backbone/templates/profiles/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
