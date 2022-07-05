import React from 'react'
import {SdContentEditor, FileList} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/ContentEditorTest.coffee'
import {dataOptions as fileListDataOptions} from '/imports/api/Files.coffee'




ListItemContent = ({rowData}) ->

  <div className="p-2">
    <div className="text-lg font-bold">{rowData?.title}</div>
    <span className="text-sm">{rowData?.description}</span>
  </div>


export ContentEditorTest = ->
  <SdContentEditor
    dataOptions={dataOptions}
    fileListDataOptions={fileListDataOptions}
    customComponents={{ListItemContent}}
  />