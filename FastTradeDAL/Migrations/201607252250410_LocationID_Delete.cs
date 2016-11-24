namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class LocationID_Delete : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Ads", "LocationId", "dbo.Locations");
            DropIndex("dbo.Ads", new[] { "LocationId" });
            DropColumn("dbo.Ads", "LocationId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Ads", "LocationId", c => c.Int(nullable: false));
            CreateIndex("dbo.Ads", "LocationId");
            AddForeignKey("dbo.Ads", "LocationId", "dbo.Locations", "LocationId", cascadeDelete: true);
        }
    }
}
