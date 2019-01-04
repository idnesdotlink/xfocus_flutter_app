# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
# shortcutbadger
-dontnote me.leolin.shortcutbadger.**
-dontnote org.apache.http.**
-dontnote android.net.http.*
-dontwarn java.lang.ClassValue
-dontwarn com.google.errorprone.annotations.**
-dontwarn com.google.j2objc.annotations.*
-dontwarn org.codehaus.mojo.animal_sniffer.*
-dontwarn android.support.v4.**
-dontwarn android.support.transition.*

# keep
-keep class com.dlazaro66.qrcodereaderview.QRCodeReaderView$OnQRCodeReadListener
-keep class android.support.v4.app.SupportActivity$ExtraData
-keep class android.support.v4.graphics.PathParser$PathDataNode
-keep class android.support.v4.app.SharedElementCallback
-keep class android.support.v4.app.Fragment
-keep class android.arch.lifecycle.Lifecycle$State
-keep class android.support.v4.app.FragmentManager

# -keep class com.google.android.gms.** { *; }
# -dontwarn com.google.android.gms.**
-keep class com.google.android.gms.internal.stable.zza
-dontwarn com.google.android.gms.internal.stable.zza
-keep class com.google.android.gms.internal.stable.zzb
-dontwarn com.google.android.gms.internal.stable.zzb
-keep class com.google.android.gms.internal.stable.zzc
-dontwarn com.google.android.gms.internal.stable.zzc
-keep class com.google.android.gms.dynamite.DynamiteModule.** { *; }
-dontwarn com.google.android.gms.dynamite.DynamiteModule

-keep class android.icu.text.RuleBasedCollator
-keep class android.icu.text.TimeZoneFormat
-keep class android.icu.text.UnicodeSet
-keep class android.icu.util.Freezable
-keep class android.icu.util.TimeZone
-keep class android.support.transition.GhostViewApi14$Creator

# -keep class com.google.android.gms.** { *; }
# -dontwarn com.google.android.gms.**

-keep class com.dexterous.** { *; }