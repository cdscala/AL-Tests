page 50100 "Book Details"
{
    PageType = List;
    SourceTable = Book;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Item No."; "Item No.") { }
                field(Title; Title) { }
                field(ISBN; ISBN) { }
                field(Author; Author) { }
                field(Excerpt; Excerpt) { }
                field("Page Count"; "Page Count") { }
                field("Publication Date"; "Publication Date") { }

            }
        }
    }



    var
        myInt: Integer;
}