page 50100 "Aw-Book Details"
{
    PageType = List;
    SourceTable = "Aw-Book";
    AutoSplitKey = true;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
                field(ISBN; ISBN)
                {
                    ApplicationArea = All;
                }
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field(Excerpt; Excerpt)
                {
                    ApplicationArea = All;
                }
                field("Page Count"; "Page Count")
                {
                    ApplicationArea = All;
                }
                field("Publication Date"; "Publication Date")
                {
                    ApplicationArea = All;
                }
                field("Publication Year"; "Publication Year")
                {
                    ApplicationArea = All;
                }


            }
        }
    }

}