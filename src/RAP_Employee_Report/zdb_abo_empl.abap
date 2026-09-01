@EndUserText.label : 'Employees - Basic information'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zdb_abo_empl {

  key client  : abap.clnt not null;
  key emplid  : zde_emplid not null;
  fname       : zd_fname;
  lname       : zd_lname;
  gender      : zde_gender;
  designation : zd_designation;

}