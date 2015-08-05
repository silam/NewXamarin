// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using MonoTouch.Foundation;
using System.CodeDom.Compiler;

namespace HelloWorld_IPhone
{
	[Register ("HelloWorld_IPhoneViewController")]
	partial class HelloWorld_IPhoneViewController
	{
		[Outlet]
		MonoTouch.UIKit.UIButton btnAction1 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton btnAction2 { get; set; }

		[Outlet]
		MonoTouch.UIKit.UIButton btnClickMe { get; set; }

		[Outlet]
		MonoTouch.UIKit.UILabel lblOutput { get; set; }

		[Action ("actnButtonClick:")]
		partial void actnButtonClick (MonoTouch.Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnClickMe != null) {
				btnClickMe.Dispose ();
				btnClickMe = null;
			}

			if (btnAction1 != null) {
				btnAction1.Dispose ();
				btnAction1 = null;
			}

			if (btnAction2 != null) {
				btnAction2.Dispose ();
				btnAction2 = null;
			}

			if (lblOutput != null) {
				lblOutput.Dispose ();
				lblOutput = null;
			}
		}
	}
}
