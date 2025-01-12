package notifications;

@:cppInclude("notifications/notifications.h") @:include("notifications/notifications.h")
extern class Notifications {
	@:native("NotificationModule_GetStatusStr")
	extern public static function NotificationModule_GetStatusStr(status:NotificationModuleStatus):ConstCharPtr;

	@:native("NotificationModule_InitLibrary")
	extern public static function NotificationModule_InitLibrary():NotificationModuleStatus;

	@:native("NotificationModule_DeInitLibrary")
	extern public static function NotificationModule_ShutdownLibrary():NotificationModuleStatus;

	@:native("NotificationModule_GetVersion")
	extern public static function NotificationModule_GetVersion(outVersion:Ptr<NotificationModuleAPIVersion>):NotificationModuleAPIVersion;

	@:native("NotificationModule_IsOverlayReady")
	extern public static function NotificationModule_IsOverlayReady(outIsReady:Ptr<Bool>):NotificationModuleStatus;

	@:native("NotificationModule_SetDefaultValue")
	extern public static function NotificationModule_SetDefaultValue(type:NotificationModuleNotificationType,
		optionType:NotificationModuleNotificationOption):NotificationModuleStatus;

	@:native("NotificationModule_AddInfoNotificationEx")
	extern public static function NotificationModule_AddInfoNotificationEx(text:ConstCharPtr, NotificationModule_AddInfoNotificationEx:Float,
		textColor:NMColor, backgroundColor:NMColor, callback:NotificationModuleNotificationFinishedCallback, callbackContext:Ptr<Void>,
		keepUntilShown:Bool):NotificationModuleStatus;

	@:native("NotificationModule_AddInfoNotification")
	extern public static function NotificationModule_AddInfoNotification(text:ConstCharPtr):NotificationModuleStatus;

	@:native("NotificationModule_AddInfoNotificationWithCallback")
	extern public static function NotificationModule_AddInfoNotificationWithCallback(text:ConstCharPtr,
		callback:NotificationModuleNotificationFinishedCallback, callbackContext:Ptr<Void>):NotificationModuleStatus;

	@:native("NotificationModule_AddErrorNotificationEx")
	extern public static function NotificationModule_AddErrorNotificationEx(text:ConstCharPtr, durationBeforeFadeOutInSeconds:Float,
		shakeDurationInSeconds:Float, textColor:NMColor, backgroundColor:NMColor, callback:NotificationModuleNotificationFinishedCallback,
		callbackContext:Ptr<Void>, keepUntilShown:Bool):NotificationModuleStatus;

	@:native("NotificationModule_AddErrorNotification")
	extern public static function NotificationModule_AddErrorNotification(text:ConstCharPtr):NotificationModuleStatus;

	@:native("NotificationModule_AddErrorNotificationWithCallback")
	extern public static function NotificationModule_AddErrorNotificationWithCallback(text:ConstCharPtr,
		callback:NotificationModuleNotificationFinishedCallback, callbackContext:Ptr<Void>):NotificationModuleStatus;

	@:native("NotificationModule_AddDynamicNotificationEx")
	extern public static function NotificationModule_AddDynamicNotificationEx(text:ConstCharPtr, outHandle:Ptr<NotificationModuleHandle>, textColor:NMColor,
		backgroundColor:NMColor, callback:NotificationModuleNotificationFinishedCallback, callbackContext:Ptr<Void>,
		keepUntilShown:Bool):NotificationModuleStatus;

	@:native("NotificationModule_AddDynamicNotification")
	extern public static function NotificationModule_AddDynamicNotification(text:ConstCharPtr,
		outHandle:Ptr<NotificationModuleHandle>):NotificationModuleStatus;

	@:native("NotificationModule_AddDynamicNotificationWithCallback")
	extern public static function NotificationModule_AddDynamicNotificationWithCallback(text:ConstCharPtr, outHandle:Ptr<NotificationModuleHandle>,
		callback:NotificationModuleNotificationFinishedCallback, callbackContext:Ptr<Void>):NotificationModuleStatus;

	@:native("NotificationModule_UpdateDynamicNotificationText")
	extern public static function NotificationModule_UpdateDynamicNotificationText(handle:NotificationModuleHandle, text:ConstCharPtr):NotificationModuleStatus;

	@:native("NotificationModule_UpdateDynamicNotificationBackgroundColor")
	extern public static function NotificationModule_UpdateDynamicNotificationBackgroundColor(handle:NotificationModuleHandle,
		backgroundColor:NMColor):NotificationModuleStatus;

	@:native("NotificationModule_UpdateDynamicNotificationTextColor")
	extern public static function NotificationModule_UpdateDynamicNotificationTextColor(handle:NotificationModuleHandle,
		textColor:NMColor):NotificationModuleStatus;

	@:native("NotificationModule_FinishDynamicNotification")
	extern public static function NotificationModule_FinishDynamicNotification(handle:NotificationModuleHandle,
		durationBeforeFadeOutInSeconds:Float):NotificationModuleStatus;

	@:native("NotificationModule_FinishDynamicNotificationWithShake")
	extern public static function NotificationModule_FinishDynamicNotificationWithShake(handle:NotificationModuleHandle, durationBeforeFadeOutInSeconds:Float,
		shakeDuration:Float):NotificationModuleStatus;
}
