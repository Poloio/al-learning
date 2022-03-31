page 50101 Amigos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Amigos;

    layout
    {
        area(Content)
        {
            repeater(Amigos)
            {
                field(Nombre; Rec.Nombre) { }
                field(Apellidos; Rec.Apellidos) { }
                field(Description; Rec.Description) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}