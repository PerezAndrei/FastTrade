namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTablesInfo_Tags_Ads : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.InfoReviewAds",
                c => new
                    {
                        InfoReviewAdId = c.Int(nullable: false, identity: true),
                        InfoReviewAdDate = c.DateTime(nullable: false),
                        AdId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.InfoReviewAdId)
                .ForeignKey("dbo.Ads", t => t.AdId, cascadeDelete: true)
                .Index(t => t.AdId);
            
            CreateTable(
                "dbo.InfoReviewTags",
                c => new
                    {
                        InfoReviewTagId = c.Int(nullable: false, identity: true),
                        InfoReviewTagDate = c.DateTime(nullable: false),
                        TagId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.InfoReviewTagId)
                .ForeignKey("dbo.Tags", t => t.TagId, cascadeDelete: true)
                .Index(t => t.TagId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.InfoReviewTags", "TagId", "dbo.Tags");
            DropForeignKey("dbo.InfoReviewAds", "AdId", "dbo.Ads");
            DropIndex("dbo.InfoReviewTags", new[] { "TagId" });
            DropIndex("dbo.InfoReviewAds", new[] { "AdId" });
            DropTable("dbo.InfoReviewTags");
            DropTable("dbo.InfoReviewAds");
        }
    }
}
