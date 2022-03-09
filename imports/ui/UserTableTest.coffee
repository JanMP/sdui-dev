import React from 'react'
import {SdTable} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/UserTable.coffee'


export UserTableTest = ->
  <SdTable dataOptions={dataOptions}/>