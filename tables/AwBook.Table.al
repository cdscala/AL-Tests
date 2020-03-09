table 50100 "Aw Book"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(10; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(20; ISBN; Text[13])
        {
            DataClassification = CustomerContent;
        }
        field(30; Title; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(40; Author; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(50; "Publication Date"; Date)
        {
            DataClassification = CustomerContent;
            ObsoleteState = Pending;
            ObsoleteReason = 'This will be deprecated in version 3.0.0.0. Use field "Publication Year instead"';
            trigger OnValidate()
            begin
                if "Publication Date" <> 0D then
                    "Publication Year" := Date2DMY("Publication Date", 3);
            end;
        }
        field(51; "Publication Year"; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(60; Excerpt; Text[2048])
        {
            DataClassification = CustomerContent;
        }
        field(70; "Page Count"; Integer)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Item No.", "Line No.")
        {
            Clustered = true;
        }
        key(ISBN; ISBN)
        {
            Unique = true;
        }

    }



}