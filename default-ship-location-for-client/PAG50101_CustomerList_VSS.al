page 50105 CustomerList
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Lists;
    SourceTable = Customer;
    AccessByPermission = tabledata Customer = r;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                repeater(Customer)
                {
                    field("No."; Rec."No.")
                    {
                        Editable = false;
                    }
                    field(Name; Rec.Name)
                    {
                        Editable = false;
                    }
                    field("Default Ship-To Adress"; Rec."Default Ship-To Adress")
                    {
                        Editable = true;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(FillDefaultShipToAdress)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                Image = Insert;

                trigger OnAction()
                var
                    Customer: Record Customer;
                    ShipToAddress: Record "Ship-to Address";
                begin
                    if Customer.FindSet then
                        repeat
                            ShipToAddress.SetRange("Customer No.", Customer."No.");
                            if ShipToAddress.Count = 1 then begin
                                ShipToAddress.FindFirst;
                                Customer."Default Ship-To Adress" := ShipToAddress.Code;
                                Customer.Modify(true);
                            end;
                            ;
                        until Customer.Next = 0;
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        myInt: Integer;
}