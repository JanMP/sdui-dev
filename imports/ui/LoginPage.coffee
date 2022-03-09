import {Meteor} from 'meteor/meteor'
import {useTracker} from 'meteor/react-meteor-data'
import React from 'react'
import {ActionButton, LoginForm} from 'meteor/janmp:sdui'

export LoginPage = ->

  userId = useTracker -> Meteor.userId()
  logout = -> Meteor.logout()

  if userId?
    <div className="p-8">
      <ActionButton
        onAction={logout}
        label="logout"
      />
    </div>
  else
    <div className="p-8">
      <LoginForm/>
    </div>