import React from 'react'

import {AutoForm, AutoField} from 'meteor/janmp:sdui'


export default FormModal = ({trigger, schemaBridge, onSubmit, model,
open, onClose, header, children, disabled = false, readOnly}) ->

  <Modal trigger={trigger} open={open} onClose={onClose} dimmer='blurring'>
    {if header? then <Modal.Header> {header} </Modal.Header>}
    <Modal.Content style={padding: '3rem'}>
      <AutoForm
        schema={schemaBridge}
        onSubmit={onSubmit}
        model={model}
        children={children}
        disabled={disabled}
        validate="onChange"
      />
    </Modal.Content>
  </Modal>
