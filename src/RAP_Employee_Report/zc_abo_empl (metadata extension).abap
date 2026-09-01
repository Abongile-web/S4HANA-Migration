@Metadata.layer: #CORE
@UI.headerInfo: { typeName: 'Employee', 
                  typeNamePlural: 'Employees' }
annotate entity ZC_ABO_EMPL
    with 
{

    @UI.lineItem: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }]
    @EndUserText: { label: 'Employee Number', quickInfo: 'Employee Number as per records' }
    Emplid;
    
    @UI.lineItem: [{ position: 20 }]
    Fname;
    
    @UI.lineItem: [{ position: 30 }]
    Lname;
    
    @UI.lineItem: [{ position: 40 }]
    @UI.selectionField: [{ position: 20 }]
    Gender;
    
    @UI.lineItem: [{ position: 50 }]
    @UI.selectionField: [{ position: 30 }]
    @EndUserText: { label: 'Designation', quickInfo: 'Designation based on experience' }
    Designation;
    
}