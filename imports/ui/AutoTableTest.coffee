import React from 'react'
import {SdTable} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'


export AutoTableTest = ->
  <SdTable dataOptions={props}/>