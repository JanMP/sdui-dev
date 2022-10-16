import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import {createUserTableAPI} from 'meteor/janmp:sdui'
import {Roles} from 'meteor/alanning:roles'


getAllowedRoles = ->
  global: [
    'admin'
    'canEditRowsWithALessThan20'
  ]
  scope:
    testscope1: ['editor']
    testscope2: ['editor']


export dataOptions = createUserTableAPI
  getAllowedRoles: getAllowedRoles
  viewUserTableRole: 'logged-in'
  editUserRole: 'admin'


if Meteor.isServer
  Meteor.settings.seedUsers?.forEach ({email, password, roles}) ->
    unless Meteor.users.findOne('emails.0.address': email)?
      if (id = Accounts.createUser {email, password})?
        if Meteor.roleAssignment.find('user._id': id).count() is 0
          # roles.forEach (role) -> Roles.createRole role, unlessExists: true
          Roles.addUsersToRoles id, roles