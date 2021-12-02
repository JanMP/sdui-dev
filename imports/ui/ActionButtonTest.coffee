import React from 'react'
import {ActionButton} from 'meteor/janmp:sdui'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'

import {tw} from '/imports/ui/twind'

export ActionButtonTest = ->
  <div className={tw "m-8"}>
    <ActionButton
      method="ActionButtonTest.logTestString"
      data={{testString:"test-string from ActionButton"}}
      confirmation="Do you really want to do this?"
      label="log test-string"
      icon={faVial}
      buttonClass="primary"
      successMsg="Success, Check both client and server logs"
    />
  </div>
