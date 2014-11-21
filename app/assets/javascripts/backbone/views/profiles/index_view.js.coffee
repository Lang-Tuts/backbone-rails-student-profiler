Student.Views.Profiles ||= {}

class Student.Views.Profiles.IndexView extends Backbone.View
  template: JST["backbone/templates/profiles/index"]

  initialize: () ->
    @options.profiles.bind('reset', @addAll)

  addAll: () =>
    @options.profiles.each(@addOne)

  addOne: (profile) =>
    view = new Student.Views.Profiles.ProfileView({model : profile})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(profiles: @options.profiles.toJSON() ))
    @addAll()

    return this
