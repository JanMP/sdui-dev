import React, {useState} from 'react';
import {AutoForm} from 'meteor/janmp:sdui-uniforms';
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'

schema = new SimpleSchema
  Select:
    type: String
    allowedValues: ['Option 1', 'Option 2', 'Option 3']
  String: String

schemaBridge = new SimpleSchema2Bridge schema

export default FormTest = ->
  
  [model, setModel] = useState Select: 'Option 3', String: 'fnord'

  <div className="">
    
    <div className="bg-white border border-gray-300 rounded m-2 p-2">
      <AutoForm
        schema={schemaBridge}
        model={model}
        onSubmit={setModel}
      />
    </div>

    <div className="bg-white border border-gray-300 rounded m-2 p-2">
      <button
        className="bg-blue-500 text-white px-3 py-2 m-2 rounded"
        onClick={-> setModel Select: 'Option 1', String: 'fnord'}>Set Option 1</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>