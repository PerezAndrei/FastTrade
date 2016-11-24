namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableLocation : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Locations",
                c => new
                    {
                        LocationId = c.Int(nullable: false, identity: true),
                        LocationName = c.String(nullable: false, maxLength: 30),
                    })
                .PrimaryKey(t => t.LocationId);
            
            AddColumn("dbo.Ads", "LocationId", c => c.Int(nullable: true));
            CreateIndex("dbo.Ads", "LocationId");
            AddForeignKey("dbo.Ads", "LocationId", "dbo.Locations", "LocationId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Ads", "LocationId", "dbo.Locations");
            DropIndex("dbo.Ads", new[] { "LocationId" });
            DropColumn("dbo.Ads", "LocationId");
            DropTable("dbo.Locations");
        }
    }
}
