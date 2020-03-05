pageextension 50101 "Item Card - Book Details" extends "Item Card"
{
    actions
    {
        addlast(navigation)
        {
            group(Books)
            {
                action(BookDetails)
                {
                    RunObject = page "Book Details";
                    RunPageLink = "Item No." = field("No.");

                }
            }

        }// Add changes to page actions here
    }
}