import React from 'react';
import {MeteorDataAutoTable} from 'meteor/janmp:sdui-table';
import {props} from '/imports/api/AutoTableTest';

console.log({props})

export const App = () => (
    <div className="h-screen">
      <MeteorDataAutoTable {...props}/>
    </div>
);
