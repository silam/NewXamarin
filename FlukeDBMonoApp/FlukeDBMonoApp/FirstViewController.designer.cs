// WARNING
//
// This file has been generated automatically by MonoDevelop to store outlets and
// actions made in the Xcode designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using MonoTouch.Foundation;

namespace FlukeDBMonoApp
{
	[Register ("FirstViewController")]
	partial class FirstViewController
	{
		[Outlet]
		MonoTouch.UIKit.UITextField userID { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField password { get; set; }

		[Outlet]
		MonoTouch.UIKit.UITextField serverName { get; set; }

		[Action ("actionConnect:")]
		partial void actionConnect (MonoTouch.Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (userID != null) {
				userID.Dispose ();
				userID = null;
			}

			if (password != null) {
				password.Dispose ();
				password = null;
			}

			if (serverName != null) {
				serverName.Dispose ();
				serverName = null;
			}
		}
	}
}
