import React from 'react'
import {FileBar} from 'meteor/janmp:sdui'
import {fileDataOptions} from '/imports/api/Files.coffee'


export FileBarTest = ->

  <div className="m-4 border border-green-500">
    <FileBar dataOptions={fileDataOptions}/>
  </div>
