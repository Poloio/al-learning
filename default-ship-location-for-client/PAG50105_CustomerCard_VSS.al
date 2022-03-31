pageextension 50105 "Default Ship-To Adress" extends "Customer Card"
{
    layout
    {
        addlast(Shipping)
        {
            field("Default Ship-To Adress"; Rec."Default Ship-To Adress")
            {
                ToolTipML = //ML - Multi lenguage
                    ENU = 'Specify a default ship-to adress to be used automatically when creating new sales document.',
                    ESP = 'Especifica una dirección de envío predeterminada para ser usada al crear nuevos documentos de venta.'
                ;
                ApplicationArea = Basic, Suite;
            }
        }
    }
}