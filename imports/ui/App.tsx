import React from 'react';
import { ToastContainer } from 'react-toastify'
import Desktop from './Desktop'


export const App = () => (
  <div className="flex justify-center">
    <ToastContainer />
    <div className="w-full">
      <Desktop />
    </div>
  </div>
);
