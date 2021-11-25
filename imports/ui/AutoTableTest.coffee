import React from 'react'
import {tw} from '/imports/ui/twind.coffee'
import {SdTable} from 'meteor/janmp:sdui'
import {props} from '/imports/api/AutoTableTest.coffee'


export AutoTableTest = ->
  <div className={tw"h-full bg-white pt-4"}>
    <SdTable dataOptions={props}/>
  </div>