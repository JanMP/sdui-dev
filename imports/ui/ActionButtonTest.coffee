import React from 'react'
import {ActionButton} from 'meteor/janmp:sdui'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'
import {tw} from './twind.coffee'


delay = (ms) -> new Promise (resolve) -> setTimeout resolve, ms

delayedWin = -> delay(2000).then -> 'Yeah baby, Yeah!'
delayedFail = -> delay(2000).then -> throw new Error "WRONG!"

export ActionButtonTest = ->

  <div className={tw "m-8 children:m-2"}>
    <ActionButton
      method="ActionButtonTest.logTestString"
      data={{testString:"test-string from ActionButton"}}
      confirmation="Do you really want to do this?"
      label="log test-string"
      icon={faVial}
      buttonClass="primary"
      successMsg="Success, Check both client and server logs"
    />
    <ActionButton
      onAction={delayedWin}
      label="delayed Win"
      icon={faVial}
      buttonClass="primary"
    />
    <ActionButton
      onAction={delayedFail}
      label="delayed Fail"
      icon={faVial}
      buttonClass="primary"
    />
     <ActionButton
      onAction={delayedWin}
      icon={faVial}
      buttonClass="primary"
    />
     <ActionButton
      onAction={delayedWin}
      label="no Icon"
      buttonClass="primary"
    />
    <ActionButton
      onAction={delayedWin}
      label="no Icon"
      buttonClass={tw"bg-danger-500! text-white"}
    />
  </div>
