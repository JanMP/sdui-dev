import React from 'react'
import {SdTable} from 'meteor/janmp:sdui'
import {props} from '/imports/api/SdTableTest.coffee'


export SdTableTest = ->
  <SdTable dataOptions={props}/>