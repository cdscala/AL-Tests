codeunit 50100 "Aw-Upgrade App"
{
    Subtype = Upgrade;

    trigger OnRun()
    begin

    end;

    trigger OnUpgradePerCompany()
    begin

    end;

    local procedure PopulateNewPublicationYearField()
    var
        BookDetails: Record "Aw-Book";
    begin
        if BookDetails.FindSet() then
            repeat
                if BookDetails."Publication Date" <> 0D then begin
                    BookDetails."Publication Year" := Date2DMY(BookDetails."Publication Date", 3);
                    BookDetails.Modify();
                end;
            until BookDetails.Next() = 0;
    end;


}