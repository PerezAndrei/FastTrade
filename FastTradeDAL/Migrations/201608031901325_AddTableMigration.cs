namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Synonyms",
                c => new
                    {
                        SynonymId = c.Int(nullable: false, identity: true),
                        SynonymName = c.String(nullable: false, maxLength: 100),
                        TagId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.SynonymId)
                .ForeignKey("dbo.Tags", t => t.TagId, cascadeDelete: true)
                .Index(t => t.TagId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Synonyms", "TagId", "dbo.Tags");
            DropIndex("dbo.Synonyms", new[] { "TagId" });
            DropTable("dbo.Synonyms");
        }
    }
}
