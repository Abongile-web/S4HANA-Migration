@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Employee Basic Information'
@Metadata.allowExtensions: true
define root view entity ZC_ABO_EMPL as select from ZI_ABO_EMPL
// composition of target_data_source_name as _association_name
{
    key Emplid,
    Fname,
    Lname,
    Gender,
    Designation
//  _association_name // Make association public
}
