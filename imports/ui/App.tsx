import React from 'react';
import { MeteorDataAutoTable } from 'meteor/janmp:sdui-table';
import { LoginForm } from 'meteor/janmp:sdui-roles';
import { props } from '/imports/api/AutoTableTest';

console.log({ props });

export const App = () => (
  <div className="flex justify-center pt-5">
    <div className="w-full md:w-1/2 text-center">
      <LoginForm />
    </div>
  </div>
);
