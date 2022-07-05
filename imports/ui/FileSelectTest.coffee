import React from 'react'
import {FileSelect} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/Files.coffee'

export FileSelectTest = ->

  <div className="m-8 border border-red-500 text-center">
    <FileSelect dataOptions={dataOptions}/>
  </div>