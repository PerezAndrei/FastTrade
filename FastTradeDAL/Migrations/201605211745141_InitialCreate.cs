namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Ads",
                c => new
                    {
                        AdId = c.Int(nullable: false, identity: true),
                        Location = c.String(nullable: false),
                        Header = c.String(nullable: false),
                        Description = c.String(nullable: false),
                        Price = c.Single(nullable: false),
                        UserId = c.Int(nullable: false),
                        KindId = c.Int(nullable: false),
                        CategoryId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.AdId)
                .ForeignKey("dbo.Categories", t => t.CategoryId, cascadeDelete: true)
                .ForeignKey("dbo.Kinds", t => t.KindId, cascadeDelete: true)
                .ForeignKey("dbo.Users", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.KindId)
                .Index(t => t.CategoryId);
            
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        CategoryId = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.CategoryId);
            
            CreateTable(
                "dbo.Images",
                c => new
                    {
                        ImageId = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        PathToSmall = c.String(nullable: false),
                        PathToOriginal = c.String(nullable: false),
                        AdId = c.Int(),
                    })
                .PrimaryKey(t => t.ImageId)
                .ForeignKey("dbo.Ads", t => t.AdId)
                .Index(t => t.AdId);
            
            CreateTable(
                "dbo.Kinds",
                c => new
                    {
                        KindId = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.KindId);
            
            CreateTable(
                "dbo.Tags",
                c => new
                    {
                        TagId = c.Int(nullable: false, identity: true),
                        TagName = c.String(nullable: false),
                        Synonyms = c.String(),
                    })
                .PrimaryKey(t => t.TagId);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        UserId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(nullable: false),
                        LastName = c.String(nullable: false),
                        Email = c.String(nullable: false),
                        BirthDay = c.DateTime(),
                        Phone = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Password = c.String(nullable: false),
                        RoleId = c.Int(),
                    })
                .PrimaryKey(t => t.UserId)
                .ForeignKey("dbo.Roles", t => t.RoleId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.Roles",
                c => new
                    {
                        RoleId = c.Int(nullable: false, identity: true),
                        RoleName = c.String(),
                    })
                .PrimaryKey(t => t.RoleId);
            
            CreateTable(
                "dbo.TagAds",
                c => new
                    {
                        Tag_TagId = c.Int(nullable: false),
                        Ad_AdId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_TagId, t.Ad_AdId })
                .ForeignKey("dbo.Tags", t => t.Tag_TagId, cascadeDelete: true)
                .ForeignKey("dbo.Ads", t => t.Ad_AdId, cascadeDelete: true)
                .Index(t => t.Tag_TagId)
                .Index(t => t.Ad_AdId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Users", "RoleId", "dbo.Roles");
            DropForeignKey("dbo.Ads", "UserId", "dbo.Users");
            DropForeignKey("dbo.TagAds", "Ad_AdId", "dbo.Ads");
            DropForeignKey("dbo.TagAds", "Tag_TagId", "dbo.Tags");
            DropForeignKey("dbo.Ads", "KindId", "dbo.Kinds");
            DropForeignKey("dbo.Images", "AdId", "dbo.Ads");
            DropForeignKey("dbo.Ads", "CategoryId", "dbo.Categories");
            DropIndex("dbo.TagAds", new[] { "Ad_AdId" });
            DropIndex("dbo.TagAds", new[] { "Tag_TagId" });
            DropIndex("dbo.Users", new[] { "RoleId" });
            DropIndex("dbo.Images", new[] { "AdId" });
            DropIndex("dbo.Ads", new[] { "CategoryId" });
            DropIndex("dbo.Ads", new[] { "KindId" });
            DropIndex("dbo.Ads", new[] { "UserId" });
            DropTable("dbo.TagAds");
            DropTable("dbo.Roles");
            DropTable("dbo.Users");
            DropTable("dbo.Tags");
            DropTable("dbo.Kinds");
            DropTable("dbo.Images");
            DropTable("dbo.Categories");
            DropTable("dbo.Ads");
        }
    }
}
