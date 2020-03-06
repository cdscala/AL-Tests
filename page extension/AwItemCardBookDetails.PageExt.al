pageextension 50101 "Aw-Item Card - Book Details" extends "Item Card"
{
    actions
    {
        addlast(navigation)
        {
            group("Aw-Books")
            {
                action("Aw-BookDetails")
                {
                    ApplicationArea = All;
                    Image = ViewDetails;
                    RunObject = page "Aw-Book Details";
                    RunPageLink = "Item No." = field("No.");

                }
            }

        }// Add changes to page actions here
    }
}