import React from 'react';
import {MeteorDataAutoTable} from 'meteor/janmp:sdui-table';
// import IconTest from './IconTest'
import {props} from '/imports/api/AutoTableTest';

console.log({props})

export const App = () => (
    <div style={{height: '30rem'}}>
      <MeteorDataAutoTable {...props}/>
    </div>
);
