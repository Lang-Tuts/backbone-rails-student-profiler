Student.Views.Profiles ||= {}

class Student.Views.Profiles.EditView extends Backbone.View
  template: JST["backbone/templates/profiles/edit"]

  events:
    "submit #edit-profile": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (profile) =>
        @model = profile
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
