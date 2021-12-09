import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {render} from 'react-dom'

import '/imports/api/api'

import 'react-toastify/dist/ReactToastify.min.css'
import 'react-virtualized/styles.css'
import '/imports/ui/main.styl'

import {twind} from '/imports/ui/twind.coffee'
import {config} from 'meteor/janmp:sdui'
import App from '/imports/ui/App'


Meteor.startup ->
  config {twind}
  render <App />, document.getElementById 'react-target'


