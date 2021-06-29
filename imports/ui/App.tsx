import React from 'react';
import MeteorDataAutoTable from './MeteorDataAutoTable';
import {props} from '/imports/api/AutoTableTest';

console.log({props})

export const App = () => (
  <div className="p-3 bg-blue-100">
    <h1>Welcome to Meteor!</h1>
    <MeteorDataAutoTable {...props}/>
  </div>
);
