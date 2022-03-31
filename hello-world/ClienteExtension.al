tableextension 50100 ClienteExtension extends Customer
{
    fields
    {
        field(50100; "Bruh Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Prueba de campo';
        }
    }

    var
        myInt: Integer;
}