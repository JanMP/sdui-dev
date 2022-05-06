import React from 'react'
import {SdTable} from 'meteor/janmp:sdui'
import {tableDataOptions} from '/imports/api/Files.coffee'


export FilesTable = ->
  <SdTable dataOptions={tableDataOptions}/>