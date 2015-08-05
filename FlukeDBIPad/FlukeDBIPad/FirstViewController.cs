using System;
using System.Drawing;

using MonoTouch.Foundation;
using MonoTouch.UIKit;
using Npgsql;
using System.Data;

namespace FlukeDBIPad
{
	public partial class FirstViewController : UIViewController
	{
		public FirstViewController () : base ("FirstViewController", null)
		{
			this.Title = NSBundle.MainBundle.LocalizedString ("First", "First");
			this.TabBarItem.Image = UIImage.FromBundle ("Images/first");
		}
		
		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}
		
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
		}
		
		public override void ViewDidUnload ()
		{
			base.ViewDidUnload ();
			
			// Clear any references to subviews of the main view in order to
			// allow the Garbage Collector to collect them sooner.
			//
			// e.g. myOutlet.Dispose (); myOutlet = null;
			
			ReleaseDesignerOutlets ();
		}
		
		public override bool ShouldAutorotateToInterfaceOrientation (UIInterfaceOrientation toInterfaceOrientation)
		{
			// Return true for supported orientations
			return true;
		}
		
		partial void ActionConnect (MonoTouch.Foundation.NSObject sender)
		{
			string connectionString =
          "Server=cal.danahertm.com;" +
          "Database=isi_test;" +
          "User ID=slam;" +
          "Password=Cat#4000;";
	       IDbConnection dbcon;
	       dbcon = new NpgsqlConnection(connectionString);
	       dbcon.Open();
	       //IDbCommand dbcmd = dbcon.CreateCommand();
			
			if ( dbcon != null && dbcon.State == ConnectionState.Open)
			{
				
			}
		
		
		}
			
	}
}

