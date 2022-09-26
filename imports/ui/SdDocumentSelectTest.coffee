import React, {useState} from 'react'
import {SdDocumentSelect} from 'meteor/janmp:sdui'
import {props} from '/imports/api/SdTableTest.coffee'

selectOptions =
  getValue: (row) -> row['_id']
  getLabel: (row) -> row['name']
  isMulti: true

export SdDocumentSelectTest = ->

  [value, setValue] = useState()

  <div className="h-full">
    <div>{value}</div>
    <SdDocumentSelect
      dataOptions={props}
      selectOptions={selectOptions}
      value={value}
      onChange={setValue}
    />
  </div>