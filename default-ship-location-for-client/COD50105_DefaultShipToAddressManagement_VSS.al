codeunit 50105 "Default Ship-To Adress Mgt"
{
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, 36/*Table::#nombre#?*/, 'OnAfterValidateEvent', 'Sell-To Customer No.', true, true)]
    local procedure FillDefaultShipToAdress(
        VAR Rec: Record "Sales Header";
        VAR xRec: Record "Sales Header";
        CurrFieldNo: Integer
        );
    var
        Customer: Record Customer;
    begin
        if (Customer.Get(Rec."Sell-To Customer No.")) then begin
            if (Customer."Default Ship-To Adress" <> '') then
                Rec.Validate("Ship-to Code", Customer."Default Ship-To Adress");
        end;
    end;
}