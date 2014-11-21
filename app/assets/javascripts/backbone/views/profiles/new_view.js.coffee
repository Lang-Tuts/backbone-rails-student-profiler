Student.Views.Profiles ||= {}

class Student.Views.Profiles.NewView extends Backbone.View
  template: JST["backbone/templates/profiles/new"]

  events:
    "submit #new-profile": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (profile) =>
        @model = profile
        window.location.hash = "/#{@model.id}"

      error: (profile, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
