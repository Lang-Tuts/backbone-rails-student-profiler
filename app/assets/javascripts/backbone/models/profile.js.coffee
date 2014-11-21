class Student.Models.Profile extends Backbone.Model
  paramRoot: 'profile'

  defaults:
    name: null
    address: null
    age: null
    mobile: null

class Student.Collections.ProfilesCollection extends Backbone.Collection
  model: Student.Models.Profile
  url: '/profiles'
