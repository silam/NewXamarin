using System;
using System.Drawing;
using System.Data;

using MonoTouch.Foundation;
using MonoTouch.UIKit;
using Npgsql;

namespace FlukeDBMonoApp
{
	public partial class FirstViewController : UIViewController
	{
		public FirstViewController () : base ("FirstViewController", null)
		{
			Title = NSBundle.MainBundle.LocalizedString ("First", "First");
			TabBarItem.Image = UIImage.FromBundle ("Images/first");
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

			NpgsqlConnection conn = new NpgsqlConnection("Server=cal.danahertm.com;Port=5432;User Id=slam;Password=Cat#4000;Database=isi_test;Pooling=False;MinPoolSize=15;");
		    conn.Open();
		    //conn.Close();

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
			return (toInterfaceOrientation != UIInterfaceOrientation.PortraitUpsideDown);
		}
	}
}

