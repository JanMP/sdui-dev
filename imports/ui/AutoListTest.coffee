import React from 'react'
import tw from '/imports/ui/twind.coffee'
import {MeteorDataAutoList} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'


export AutoListTest = ->
  <div className={tw"h-screen pt-4"}>
    <MeteorDataAutoList {props...}/>
  </div>