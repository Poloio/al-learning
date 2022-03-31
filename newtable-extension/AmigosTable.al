table 50100 Amigos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Integer)
        {
            Caption = 'Código';
            AutoIncrement = true;
        }

        field(2; Nombre; Text[50])
        {
        }

        field(3; Apellidos; Text[50])
        {
        }

        field(4; Description; Text[50])
        {
            Caption = 'Descripción';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}