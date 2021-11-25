import React from 'react'
import {tw} from '/imports/ui/twind.coffee'
import {SdList} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'

ListItem = ({row}) ->
  <div className={tw"pb-2 px-4"}>
    <div className={tw"p-4 border rounded"}>
      {row.name}
    </div>
  </div>

export AutoListTest = ->
  <div className={tw"h-screen pt-4"}>
    <SdList
      dataOptions={props}
    />
  </div>