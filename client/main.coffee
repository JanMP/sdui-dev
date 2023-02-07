import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {render} from 'react-dom'

import '/imports/api/api'

import 'react-toastify/dist/ReactToastify.min.css'
import '/imports/ui/styles/react-virtualized-styles-fixed.css'
import '/imports/ui/styles/sdTable.sass'

import setupI18n from '/imports/i18n-setup.coffee'

# import {config} from 'meteor/janmp:sdui'
# import {dataOptions as fileDataOptions} from '/imports/api/Files.coffee'

import App from '/imports/ui/App'


Meteor.startup ->
  # config files: fileDataOptions
  setupI18n()
  render <App />, document.getElementById 'react-target'


