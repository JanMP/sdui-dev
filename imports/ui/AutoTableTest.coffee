import { divide } from 'lodash'
import React from 'react'
import tw from '/imports/ui/twind.coffee'
import {MeteorDataAutoTable} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'


export AutoTableTest = ->
  <div className={"h-screen bg-blue-100 p-4"}>
    <MeteorDataAutoTable {props...}/>
  </div>