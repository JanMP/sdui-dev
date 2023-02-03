import React from 'react'
import {ActionButton} from 'meteor/janmp:sdui'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'
import {useTranslation} from 'react-i18next'


delay = (ms) -> new Promise (resolve) -> setTimeout resolve, ms

delayedWin = -> delay(2000).then -> 'Yeah baby, Yeah!'
delayedFail = -> delay(2000).then -> throw new Error "WRONG!"

export ActionButtonTest = ->

  {t} = useTranslation()

  <div className="m-8 flex gap-4 items-center">
    <ActionButton
      method="ActionButtonTest.logTestString"
      data={{testString:"test-string from ActionButton"}}
      confirmation={t "Do you really want to do this?"}
      label={t "test"}
      icon={faVial}
      className="primary"
      successMsg={t "Success, Check both client and server logs"}
    />
    <ActionButton
      onAction={delayedWin}
      label={t "delayed Win"}
      icon={faVial}
      className="ok"
      successMsg="Yeah baby, yeah!"
    />
    <ActionButton
      onAction={delayedFail}
      label="delayed Fail"
      icon={faVial}
      className="bg-pink-300 w-[8rem] h-[8rem] rounded-full text-2xl text-green-200 hover:text-green-600"
      errorMsg="This did not work..."
    />
     <ActionButton
      onAction={delayedWin}
      icon={faVial}
      className="icon !text-red-500 text-3xl animate-pulse mx-6"
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
