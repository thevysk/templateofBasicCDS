using { Currency, managed, sap } from '@sap/cds/common';
namespace sap.capire.employee; 

entity Employees : managed { 
  key ID : Integer;
  name  : localized String(111);
  position  : localized String(1111);
  manager : Association to Managers;
  genre  : Association to Genres;
  salary  : Decimal(9,2);
  currency : Currency;
}

entity Managers : managed { 
  key ID : Integer;
  name   : String(111);
  employees  : Association to many Employees on employees.manager = $self;
}

/** Hierarchically organized Code List for Genres */
/**entity Departments : sap.common.CodeList { 
  key ID   : Integer;
  parent   : Association to Departments;
  children : Composition of many Departments on children.parent = $self;
}*/

/** Hierarchically organized Code List for Genres */
entity Genres : sap.common.CodeList { 
  key ID   : Integer;
  parent   : Association to Genres;
  children : Composition of many Genres on children.parent = $self;
}