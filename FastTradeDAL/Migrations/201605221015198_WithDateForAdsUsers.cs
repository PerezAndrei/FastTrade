namespace FastTradeDAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class WithDateForAdsUsers : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Ads", "DateAdd", c => c.DateTime());
            AddColumn("dbo.Users", "DateReg", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Users", "DateReg");
            DropColumn("dbo.Ads", "DateAdd");
        }
    }
}
