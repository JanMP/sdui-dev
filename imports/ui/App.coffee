import React from 'react'
import {ToastContainer} from 'react-toastify'
import {TestLayout} from './TestLayout.coffee'
import {tw} from './twind.coffee'
import Modal from 'react-modal'


export default ->
  
  Modal.setAppElement('#react-target')
  
  <>
    <ToastContainer />
    <TestLayout />
  </>

