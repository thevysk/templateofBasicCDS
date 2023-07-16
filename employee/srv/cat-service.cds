using { sap.capire.employee as my } from '../db/schema';
service CatalogService @(path:'/browse') { 

  @readonly entity Employees as SELECT from my.Employees {*,
    manager.name as manager
  } excluding { createdBy, modifiedBy };

  @requires: 'authenticated-user'
  action submitOrder (employee: Employees:ID, quantity: Integer);
}