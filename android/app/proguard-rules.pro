# ML Kit text recognition
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }

# Specific keep rules for missing classes
-keep class com.google.mlkit.vision.text.chinese.** { *; }
-keep class com.google.mlkit.vision.text.devanagari.** { *; }
-keep class com.google.mlkit.vision.text.japanese.** { *; }
-keep class com.google.mlkit.vision.text.korean.** { *; }

# General ML Kit rules
-keep public class com.google.mlkit.**
-keep class com.google.android.libraries.mlkit.** { *; }
-keep class * implements com.google.android.gms.vision.engine.** { *; }