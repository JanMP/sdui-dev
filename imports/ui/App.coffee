import React from 'react'
import {ToastContainer} from 'react-toastify'
import Modal from 'react-modal'
import {TestLayout} from './TestLayout.coffee'


export default ->
  
  Modal.setAppElement('#react-target')
  
  <>
    <ToastContainer />
    <TestLayout />
  </>

