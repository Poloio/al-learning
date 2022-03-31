tableextension 50105 "Default Hip-To Adress" extends Customer
{
    fields
    {
        field(50101; "Default Ship-To Adress"; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML =
                ENU = 'Default Ship-To Adress',
                ESP = 'Dirección de Envío Predeterminada'
            ;

            TableRelation = "Ship-To Address".Code where("Customer No." = field("No."));
            ValidateTableRelation = true;
        }
    }
}