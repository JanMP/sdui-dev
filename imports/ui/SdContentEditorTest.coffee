import React from 'react'
import {SdContentEditor} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/SdContentEditorTest.coffee'


ListItemContent = ({rowData}) ->

  <div className="p-2">
    <div className="text-lg font-bold">{rowData?.title}</div>
    <span className="text-sm">{rowData?.description}</span>
  </div>


export SdContentEditorTest = ->
  <SdContentEditor
    dataOptions={dataOptions}
    customComponents={{ListItemContent}}
  />