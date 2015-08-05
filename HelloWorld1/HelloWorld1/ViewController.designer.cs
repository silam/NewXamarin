// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace HelloWorld1
{
	[Register ("ViewController")]
	partial class ViewController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIButton button { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIView label { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel labelcount { get; set; }

		[Action ("UIButton4_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void UIButton4_TouchUpInside (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
			if (button != null) {
				button.Dispose ();
				button = null;
			}
			if (label != null) {
				label.Dispose ();
				label = null;
			}
			if (labelcount != null) {
				labelcount.Dispose ();
				labelcount = null;
			}
		}
	}
}
