شـدّاد - Auto Clicker
=====================

هذا المشروع مُعد للرفع إلى GitHub كـ repository عام باسم shdado-autoclicker.
يحتوي على:
- إعدادات Gitpod للتجميع التلقائي وبناء APK الموقّع.
- سكربتات لإنشاء keystore وتوقيع الـ APK.
- مشروع Android (Kotlin) مع Accessibility service مثال.

كيفية الاستخدام (باختصار):
1) ارفع هذا المجلد كمستودع جديد إلى GitHub (اسمه shdado-autoclicker).
2) افتح Gitpod باستخدام الرابط: https://gitpod.io/#https://github.com/YOUR_USERNAME/shdado-autoclicker
3) انتظر الإعداد؛ النظام سيشغّل build تلقائياً.
4) بعد اكتمال البناء، ستجد الملف الموقع في:
   app/build/outputs/apk/release/app-release-signed.apk
5) حمّل الـ APK ونقله إلى هاتفك وثبّته (افتحه - سماح للتثبيت من مصادر غير معروفة).
6) فعّل Accessibility Service وOverlay وMediaProjection حسب الحاجة داخل التطبيق.

ملاحظات أمان:
- Keystore الذي سيتم إنشاؤه داخل Gitpod هو مبدئي؛ إذا أردت نقل المفاتيح واحفظها محليًا استخدم keytool لإنشاء keystore خاصة بك.
- قبل نشر التطبيق على Google Play، راجع سياسات Google المتعلقة بخدمات Accessibility.
