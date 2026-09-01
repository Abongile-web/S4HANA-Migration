@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Employee Basic Info'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ABO_EMPL as select from zdb_abo_empl
{
    key emplid as Emplid,
    fname as Fname,
    lname as Lname,
    gender as Gender,
    designation as Designation
}
