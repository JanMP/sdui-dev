import React from 'react'
import {SdContentEditor, useTw} from 'meteor/janmp:sdui'
import {dataOptions} from '/imports/api/ContentEditorTest.coffee'

ListItemContent = ({rowData}) ->

  tw = useTw()

  <div className={tw"p-2"}>
    <div className={tw"text-lg font-bold"}>{rowData?.title}</div>
    <span className={tw"text-sm"}>{rowData?.description}</span>
  </div>


export ContentEditorTest = ->
  <SdContentEditor
    dataOptions={dataOptions}
    customComponents={{ListItemContent}}
  />