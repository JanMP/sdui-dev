import React from 'react'
import {MeteorMethodButton} from 'meteor/janmp:sdui'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'

import tw from '/imports/ui/twind'

export MeteorMethodButtonTest = ->
  <div className={tw "m-8"}>
    <MeteorMethodButton
      method="MeteorMethodButtonTest.logTestString"
      data={{testString:"test-string from MeteorMethodButton"}}
      confirmation="Do you really want to do this?"
      label="log test-string"
      icon={faVial}
      buttonClass="primary"
      successMsg="Success, Check both client and server logs"
    />
  </div>
