import React from 'react'
import {tw} from '/imports/ui/twind.coffee'
import {SdList} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'

ListItemContent = ({rowData}) ->
  <div className={tw"p-2"}>
    <div className={tw"text-lg font-bold"}>{rowData?.name}</div>
    <span className={tw"text-sm"}>Summe: {rowData?.sum}</span>
  </div>

ListItem = ({rowData, index, onDelete, onClick}) ->
  <div className={tw"p-2"}>
    <div className={tw "p-2", if index%%2 is 0 then "bg-blue-100"}>
      <div>{JSON.stringify(rowData)}</div>
      <div className={tw"mt-2"}><button onClick={onDelete}>delete</button></div>
      <div className={tw"mt-2"}><button onClick={-> onClick({rowData, index})}>edit</button></div>
    </div>
  </div>

# try with customComponents={{}}, {{ListItem}} or {{ListItemContent}}
export AutoListTest = ->
  <div className={tw"h-screen pt-4"}>
    <SdList
      dataOptions={props}
      customComponents={{ListItemContent}}
    />
  </div>