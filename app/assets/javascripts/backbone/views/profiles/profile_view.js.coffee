Student.Views.Profiles ||= {}

class Student.Views.Profiles.ProfileView extends Backbone.View
  template: JST["backbone/templates/profiles/profile"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
