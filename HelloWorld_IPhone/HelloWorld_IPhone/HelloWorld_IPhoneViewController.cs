using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace HelloWorld_IPhone
{
	public partial class HelloWorld_IPhoneViewController : UIViewController
	{
		protected int _numberOfTimesClicked = 0;

		public HelloWorld_IPhoneViewController () : base ("HelloWorld_IPhoneViewController", null)
		{
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
			//any additional setup after loading the view, typically from a nib.
			//---- wire up our click me button
			this.btnClickMe.TouchUpInside += (sender, e) => {
				this._numberOfTimesClicked++;
				this.lblOutput.Text = "Clicked [" +
				                    this._numberOfTimesClicked.ToString() + "] times!";
			};
			
			// Perform any additional setup after loading the view, typically from a nib.
		}
		/// <summary>
		/// This is our common action handler. Two buttons call this via an action method.
		/// </summary>
		partial void actnButtonClick (MonoTouch.Foundation.NSObject sender)
		{
			this.lblOutput.Text = "Action button " +  ((UIButton)sender).CurrentTitle + " clicked.";
		}

	}
}

