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

namespace Phoneword_ios
{
	[Register ("Phoneword_iosViewController")]
	partial class Phoneword_iosViewController
	{
		[Outlet]
		[GeneratedCodeAttribute ("iOS Designer", "1.0")]
		MonoTouch.UIKit.UIButton CallButton { get; set; }

		[Outlet]
		[GeneratedCodeAttribute ("iOS Designer", "1.0")]
		MonoTouch.UIKit.UITextField PHoneWordText { get; set; }

		[Outlet]
		[GeneratedCodeAttribute ("iOS Designer", "1.0")]
		MonoTouch.UIKit.UIButton TranslateButton { get; set; }

		void ReleaseDesignerOutlets ()
		{
			if (CallButton != null) {
				CallButton.Dispose ();
				CallButton = null;
			}
			if (PHoneWordText != null) {
				PHoneWordText.Dispose ();
				PHoneWordText = null;
			}
			if (TranslateButton != null) {
				TranslateButton.Dispose ();
				TranslateButton = null;
			}
		}
	}
}
