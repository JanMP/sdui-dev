import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import {createUserTableAPI} from 'meteor/janmp:sdui'
import {Roles} from 'meteor/alanning:roles'

export dataOptions = createUserTableAPI {}

testUsers = [
  email: 'tester1@test.com'
  password: 'Password123'
  roles: ['admin']
,
  email: 'tester2@test.com'
  password: 'Password123'
  roles: ['user']
,
  email: 'tester3@test.com'
  password: 'Password123'
  roles: ['admin', 'user', 'editor']
]

testUsers.forEach ({email, password, roles}) ->
  unless Meteor.users.findOne('emails.0.address': email)?
    if (id = Accounts.createUser {email, password})?
      if Meteor.roleAssignment.find('user._id': id).count() is 0
        roles.forEach (role) -> Roles.createRole role, unlessExists: true
        Roles.addUsersToRoles id, roles