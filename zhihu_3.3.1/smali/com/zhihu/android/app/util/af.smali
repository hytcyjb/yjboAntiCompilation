.class public Lcom/zhihu/android/app/util/af;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field public static final a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/zhihu/android/app/util/af;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/util/Calendar;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 54
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 55
    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 58
    :cond_0
    if-lt v0, p1, :cond_1

    if-ne v0, p1, :cond_2

    if-ge v1, p2, :cond_2

    .line 59
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xc

    const/16 v1, 0xb

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 41
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 42
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 43
    if-ne v0, v1, :cond_0

    if-ne v2, v3, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_2

    if-ge v2, v3, :cond_2

    .line 47
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    const v0, 0x7f090246

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;II)V

    .line 124
    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    return-void
.end method

.method private static a(Landroid/content/Context;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {p0, p1, p2}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/util/GregorianCalendar;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    sget-object v0, Lcom/zhihu/android/app/util/af;->a:Ljava/text/DateFormat;

    invoke-virtual {p2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    return-void
.end method

.method private static a(Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    const v0, 0x7f090274

    invoke-static {p0, v0, p1, p2}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IJ)V

    .line 173
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    const v0, 0x7f090257

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/GregorianCalendar;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    const v0, 0x7f09023b

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;ILjava/util/GregorianCalendar;)V

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    const v0, 0x7f090273

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    const v0, 0x7f090272

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;IJ)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    const v0, 0x7f09025a

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;II)V

    .line 248
    return-void
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    const v0, 0x7f090258

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 228
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/GregorianCalendar;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    const v0, 0x7f09023c

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;ILjava/util/GregorianCalendar;)V

    .line 140
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    const v0, 0x7f090276

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 102
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 76
    const v0, 0x7f09023a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;IZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    const v0, 0x7f090264

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 151
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 83
    const v0, 0x7f090273

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-static {p0, p1, p2}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 321
    sget-object v2, Lcom/zhihu/android/app/util/af;->a:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    const v0, 0x7f090236

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 162
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 94
    const v0, 0x7f090276

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    const v0, 0x7f090259

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 239
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    const v0, 0x7f09025c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    const v0, 0x7f090244

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 256
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 115
    const v0, 0x7f09025d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 119
    const v0, 0x7f090246

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    const v0, 0x7f09025f

    invoke-static {p0, v0, p1}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;IZ)V

    .line 275
    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/util/GregorianCalendar;
    .locals 2
    .parameter

    .prologue
    .line 127
    const v0, 0x7f09023b

    const v1, 0x7f090350

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/GregorianCalendar;
    .locals 2
    .parameter

    .prologue
    .line 135
    const v0, 0x7f09023c

    const v1, 0x7f090351

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 146
    const v0, 0x7f090264

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 157
    const v0, 0x7f090236

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 168
    const v0, 0x7f090274

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 212
    const v0, 0x7f090257

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 223
    const v0, 0x7f090258

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 234
    const v0, 0x7f090259

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 243
    const v0, 0x7f09025a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 251
    const v0, 0x7f090244

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 270
    const v0, 0x7f09025f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/app/util/af;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static s(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 344
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static t(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 348
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
