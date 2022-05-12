import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import {createUserTableAPI} from 'meteor/janmp:sdui'
import {Roles} from 'meteor/alanning:roles'

allowedRoles = [
    'admin'
    'getUserFileList'
    'uploadUserFiles'
    'getCommonFileList'
    'uploadCommonFiles'
    'canEditRowsWithALessThan20'
  ]

export dataOptions = createUserTableAPI
  allowedRoles: allowedRoles
  viewUserTableRole: 'admin'
  editUserRole: 'admin'

testUsers = [
  email: 'pille@mac.com'
  password: 'Geheim123'
  roles: allowedRoles
,
  email: 'tester1@test.com'
  password: 'Password123'
  roles: ['user']
,
  email: 'tester2@test.com'
  password: 'Password123'
  roles: ['user']
,
  email: 'tester3@test.com'
  password: 'Password123'
  roles: ['user']
]


allowedRoles.forEach (role) ->
  Roles.createRole role, unlessExists: true

testUsers.forEach ({email, password, roles}) ->
  unless Meteor.users.findOne('emails.0.address': email)?
    if (id = Accounts.createUser {email, password})?
      if Meteor.roleAssignment.find('user._id': id).count() is 0
        roles.forEach (role) -> Roles.createRole role, unlessExists: true
        Roles.addUsersToRoles id, roles