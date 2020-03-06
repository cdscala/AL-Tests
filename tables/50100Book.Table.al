table 50100 "Aw-Book"
{
    DataClassification = ToBeClassified;

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