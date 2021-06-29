import React from 'react';
import { useTable } from 'react-table';
import {props} from '/imports/api/AutoTableTest'

const columns = [
  {
    Header: 'Vorname',
    accessor: 'firstName'
  },
  { Header: 'Nachname', accessor: 'lastName' }
];

const data = [
  {firstName: 'Jan', lastName: 'Pilgenröder'},
  {firstName: 'Lena', lastName: 'Pilgenröder'}
]

const TestTable = () => {

  const {
    getTableProps,
    getTableBodyProps,
    headerGroups,
    rows,
    prepareRow,
  } = useTable({
    columns,
    data,
  });

  console.log(props)

  return (
    <div>
      <table>
        <thead>
          {headerGroups.map(headerGroup => (
            <tr {...headerGroup.getHeaderGroupProps()}>
              {headerGroup.headers.map(column => (
                <th {...column.getHeaderProps()}>{column.render('Header')}</th>
              ))}
            </tr>
          ))}
        </thead>
        <tbody {...getTableBodyProps()}>
          {rows.map((row, i) => {
            prepareRow(row)
            return (
              <tr {...row.getRowProps()}>
                {row.cells.map(cell => {
                  return <td {...cell.getCellProps()}>{cell.render('Cell')}</td>
                })}
              </tr>
            )
          })}
        </tbody>
      </table>
    </div>
  );
};



export default TestTable;