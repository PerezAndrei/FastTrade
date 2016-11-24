namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DeleteLocationString : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Ads", "Location");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Ads", "Location", c => c.String(nullable: false));
        }
    }
}
