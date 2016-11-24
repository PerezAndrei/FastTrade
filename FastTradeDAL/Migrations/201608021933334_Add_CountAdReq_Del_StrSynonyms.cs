namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_CountAdReq_Del_StrSynonyms : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Tags", "CountAd", c => c.Int(nullable: false));
            AddColumn("dbo.Tags", "CountReq", c => c.Int(nullable: false));
            DropColumn("dbo.Tags", "Synonyms");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tags", "Synonyms", c => c.String());
            DropColumn("dbo.Tags", "CountReq");
            DropColumn("dbo.Tags", "CountAd");
        }
    }
}
