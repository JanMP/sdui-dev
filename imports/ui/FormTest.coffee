import React, {useState} from 'react';
import {AutoForm} from 'meteor/janmp:sdui-uniforms';
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'

allowedValues = [1..10].map (i) -> "Option #{i}"

schema = new SimpleSchema
  Select:
    type: String
    allowedValues: allowedValues
  MultiSelect:
    type: Array
    uniforms:
      checkbox: true
  'MultiSelect.$':
    type: String
    allowedValues: allowedValues

freshModel =
  Select: 'Option 1'
  MultiSelect: ['Option 1', 'Option 2']

schemaBridge = new SimpleSchema2Bridge schema

export default FormTest = ->
  
  [model, setModel] = useState freshModel
  <div className="">
    
    <div className="bg-red-100 border border-gray-300 rounded m-2 p-2">
      <AutoForm
        schema={schemaBridge}
        model={model}
        onSubmit={setModel}
      />
    </div>

    <div className="bg-white border border-gray-300 rounded m-2 p-2">
      <button
        className="primary"
        onClick={-> setModel freshModel}>reset model</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>