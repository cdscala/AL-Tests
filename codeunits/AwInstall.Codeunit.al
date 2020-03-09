codeunit 50101 "Aw Install"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        ApplAreaSetup: Record "Application Area Setup";
    begin
        ApplAreaSetup.Get(CompanyName(), '', '');
        //ApplAreaSetup.Init();
        //ApplAreaSetup."Company Name" := CompanyName();
        ApplAreaSetup.Basic := true;
        ApplAreaSetup.Suite := true;
        //ApplAreaSetup.Insert();
        ApplAreaSetup."Aw BooksBasic" := true;
        ApplAreaSetup.Modify();
    end;
}