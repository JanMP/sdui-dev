import React from 'react'
import {ActionButton, useTw} from 'meteor/janmp:sdui'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'


delay = (ms) -> new Promise (resolve) -> setTimeout resolve, ms

delayedWin = -> delay(2000).then -> 'Yeah baby, Yeah!'
delayedFail = -> delay(2000).then -> throw new Error "WRONG!"

export ActionButtonTest = ->

  tw = useTw()

  <div className={tw "m-8 children:m-2"}>
    <ActionButton
      method="ActionButtonTest.logTestString"
      data={{testString:"test-string from ActionButton"}}
      confirmation="Do you really want to do this?"
      label="log test-string"
      icon={faVial}
      className="primary"
      successMsg="Success, Check both client and server logs"
    />
    <ActionButton
      onAction={delayedWin}
      label="delayed Win"
      icon={faVial}
      className="ok"
      successMsg="Yeah baby, yeah!"
    />
    <ActionButton
      onAction={delayedFail}
      label="delayed Fail"
      icon={faVial}
      className={tw"bg-pink-300 w-[8rem] h-[8rem] rounded-full!"}
      errorMsg="This did not work..."
    />
     <ActionButton
      onAction={delayedWin}
      icon={faVial}
      className="icon warn"
    />
     <ActionButton
      onAction={delayedWin}
      label="no Icon"
    />
    <ActionButton
      onAction={delayedFail}
      label="no Icon"
      className="danger"
    />
  </div>
