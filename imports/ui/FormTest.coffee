import React, {useState} from 'react'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'
import {ManagedForm} from 'meteor/janmp:sdui'
import {CustomDateField} from './CustomDateField.coffee'

allowedValues = [1..10].map (i) -> "Option #{i}"

Option = (props) ->
  <div>
    <pre>{JSON.stringify props.data, null, 2}</pre>
  </div>

schema = new SimpleSchema
  date:
    type: Date
    uniforms: CustomDateField


freshModel = {}

schemaBridge = new SimpleSchema2Bridge schema


export FormTest = ->
  [model, setModel] = useState freshModel
  
  onSubmit = (d) ->
    console.log 'submit', d
    setModel d
  
  <div className="h-screen bg-gray-100 p-4 overflow-y-scroll">
    <div className="bg-white border shadow-xl border-gray-300 rounded my-4 p-4">
      <ManagedForm
        schemaBridge={schemaBridge}
        model={model}
        onSubmit={onSubmit}
        showTimeSelect
      />
    </div>

    <div className="bg-white border hover:shadow-lg border-gray-300 rounded p-4">
      <button
        className="bg-danger! text-white"
        onClick={-> setModel freshModel}>reset model</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>
