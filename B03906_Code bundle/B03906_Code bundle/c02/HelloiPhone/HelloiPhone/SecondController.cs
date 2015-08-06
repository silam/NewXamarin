using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.CodeDom.Compiler;

namespace HelloiPhone
{
	partial class SecondController : UIViewController
	{
		public SecondController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();

			close.TouchUpInside += (sender, e) => DismissViewController(true, null);
		}
	}
}
