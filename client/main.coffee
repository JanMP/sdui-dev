import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {render} from 'react-dom'

import '/imports/api/api'

import 'react-toastify/dist/ReactToastify.min.css'
import 'react-virtualized/styles.css'
import '/imports/ui/main'

import App from '/imports/ui/App'

import Modal from 'react-modal'
Modal.setAppElement('#react-target')

Meteor.startup ->
  render <App />, document.getElementById 'react-target'

