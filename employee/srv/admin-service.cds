using { sap.capire.employee as my } from '../db/schema';
service AdminService  @(requires:'authenticated-user'){ 
  entity Employees as projection on my.Employees;
  entity Managers as projection on my.Managers;
}