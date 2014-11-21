class Student.Routers.ProfilesRouter extends Backbone.Router
  initialize: (options) ->
    @profiles = new Student.Collections.ProfilesCollection()
    @profiles.reset options.profiles

  routes:
    "new"      : "newProfile"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProfile: ->
    @view = new Student.Views.Profiles.NewView(collection: @profiles)
    $("#profiles").html(@view.render().el)

  index: ->
    @view = new Student.Views.Profiles.IndexView(profiles: @profiles)
    $("#profiles").html(@view.render().el)

  show: (id) ->
    profile = @profiles.get(id)

    @view = new Student.Views.Profiles.ShowView(model: profile)
    $("#profiles").html(@view.render().el)

  edit: (id) ->
    profile = @profiles.get(id)

    @view = new Student.Views.Profiles.EditView(model: profile)
    $("#profiles").html(@view.render().el)
