table 50100 "Book"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Line No."; Integer)
        { }
        field(20; ISBN; Text[13])
        { }
        field(30; Title; Text[100]) { }
        field(40; Author; Text[100]) { }
        field(50; "Publication Date"; Date) { }
        field(60; Excerpt; Text[2048]) { }
        field(70; "Page Count"; Integer) { }
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