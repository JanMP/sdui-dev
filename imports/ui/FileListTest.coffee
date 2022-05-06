import React from 'react'
import {FileList} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/Files.coffee'


export FileListTest = ->

  <FileList dataOptions={dataOptions}/>