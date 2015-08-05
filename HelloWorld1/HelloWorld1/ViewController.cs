using System;

using UIKit;

namespace HelloWorld1
{
	public partial class ViewController : UIViewController
	{
		public ViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			// Perform any additional setup after loading the view, typically from a nib.
			int count = 0;

			button.TouchUpInside +=	(sender, e) => this.labelcount.Text   = string.Format ("Count: {0}", ++count);

		}

		public override void DidReceiveMemoryWarning ()
		{
			base.DidReceiveMemoryWarning ();
			// Release any cached data, images, etc that aren't in use.
		}

		partial void UIButton4_TouchUpInside (UIButton sender)
		{
			throw new NotImplementedException ();
		}
	}
}

