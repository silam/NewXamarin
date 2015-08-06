// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.CodeDom.Compiler;

namespace HelloiPhone
{
	[Register ("SecondController")]
	partial class SecondController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIButton close { get; set; }

		void ReleaseDesignerOutlets ()
		{
			if (close != null) {
				close.Dispose ();
				close = null;
			}
		}
	}
}
