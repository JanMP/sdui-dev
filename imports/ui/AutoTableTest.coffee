import React from 'react'
import tw from '/imports/ui/twind.coffee'
import {MeteorDataAutoTable} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'


export AutoTableTest = ->
  <div className={tw"h-full bg-white pt-4"}>
    <MeteorDataAutoTable {props...}/>
  </div>