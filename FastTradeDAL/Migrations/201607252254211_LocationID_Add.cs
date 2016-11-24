namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class LocationID_Add : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Ads", "LocationId", c => c.Int(nullable: false));
            CreateIndex("dbo.Ads", "LocationId");
            AddForeignKey("dbo.Ads", "LocationId", "dbo.Locations", "LocationId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Ads", "LocationId", "dbo.Locations");
            DropIndex("dbo.Ads", new[] { "LocationId" });
            DropColumn("dbo.Ads", "LocationId");
        }
    }
}
