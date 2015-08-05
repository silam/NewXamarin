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
		UIButton Close { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIView label { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel labelcount { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		SecondController SecondController { get; set; }

		void ReleaseDesignerOutlets ()
		{
			if (button != null) {
				button.Dispose ();
				button = null;
			}
			if (Close != null) {
				Close.Dispose ();
				Close = null;
			}
			if (label != null) {
				label.Dispose ();
				label = null;
			}
			if (labelcount != null) {
				labelcount.Dispose ();
				labelcount = null;
			}
			if (SecondController != null) {
				SecondController.Dispose ();
				SecondController = null;
			}
		}
	}
}
