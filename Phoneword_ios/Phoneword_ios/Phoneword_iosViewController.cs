using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace Phoneword_ios
{
	public partial class Phoneword_iosViewController : UIViewController
	{
		public Phoneword_iosViewController (IntPtr handle) : base (handle)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		#region View lifecycle

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
			string translateNumber = string.Empty;

			TranslateButton.TouchUpInside += (object sender, EventArgs e) => {
				PHoneWordText.ResignFirstResponder ();
				translateNumber = Core.PhonewordTranslator.ToNumber (PHoneWordText.Text);

				if (translateNumber != null) {
					CallButton.Enabled = true;
					CallButton.SetTitle ("Call " + translateNumber, UIControlState.Normal);

				} else {
					CallButton.Enabled = true;
					CallButton.SetTitle (string.Empty, UIControlState.Normal);
					CallButton.Enabled = true;
				}
			};

			CallButton.TouchUpInside += (object sender, EventArgs e) => 
			{
				var url = new NSUrl("tel: " + translateNumber);
				if ( !UIApplication.SharedApplication.OpenUrl(url))
				{
					var alert = new UIAlertView("Not support call", "YOur device not support calling", null,"Cancel", null);
					alert.Show();
				}
			};

		}

		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
		}

		public override void ViewDidAppear (bool animated)
		{
			base.ViewDidAppear (animated);
		}

		public override void ViewWillDisappear (bool animated)
		{
			base.ViewWillDisappear (animated);
		}

		public override void ViewDidDisappear (bool animated)
		{
			base.ViewDidDisappear (animated);
		}

		#endregion
	}
}

