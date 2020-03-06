codeunit 50100 "Aw-Upgrade App" //solo funciona con el cambio de version
{
    Subtype = Upgrade;

    trigger OnRun()
    begin

    end;

    trigger OnUpgradePerCompany()
    begin
        if (AppInfo.DataVersion().Major() = 1) and (AppInfo.AppVersion().Major() > 1) then
            PopulateNewPublicationYearField();
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

    var
        AppInfo: ModuleInfo;


}