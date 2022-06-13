import React from 'react'
import {SdList} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'

ListItemContent = ({rowData}) ->

  <div className="p-2">
    <div className="text-lg font-bold">{rowData?.name}</div>
    <span className="text-sm">Summe: {rowData?.sum}</span>
  </div>


ListItem = ({rowData, index, onDelete, onClick}) ->

  <div className="p-2">
    <div className= "p-2 #{if index %% 2 is 0 then 'bg-blue-100' else ''}">
      <div>{JSON.stringify(rowData)}</div>
      <div className="mt-2"><button onClick={onDelete}>delete</button></div>
      <div className="mt-2"><button onClick={-> onClick({rowData, index})}>edit</button></div>
    </div>
  </div>

# try with customComponents={{}}, {{ListItem}} or {{ListItemContent}}
export AutoListTest = ->
  <SdList
    dataOptions={props}
    customComponents={{ListItemContent}}
  />