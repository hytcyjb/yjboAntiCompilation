.class public Lcom/zhihu/android/base/util/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/base/util/SystemUtils$SystemUtilsException;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->a:Z

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->b:Z

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->c:Z

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->d:Z

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->e:Z

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->f:Z

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->g:Z

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->i:Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->j:Z

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_a

    :goto_a
    sput-boolean v1, Lcom/zhihu/android/base/util/SystemUtils;->k:Z

    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0

    :cond_1
    move v0, v2

    .line 40
    goto :goto_1

    :cond_2
    move v0, v2

    .line 42
    goto :goto_2

    :cond_3
    move v0, v2

    .line 44
    goto :goto_3

    :cond_4
    move v0, v2

    .line 46
    goto :goto_4

    :cond_5
    move v0, v2

    .line 48
    goto :goto_5

    :cond_6
    move v0, v2

    .line 50
    goto :goto_6

    :cond_7
    move v0, v2

    .line 52
    goto :goto_7

    :cond_8
    move v0, v2

    .line 54
    goto :goto_8

    :cond_9
    move v0, v2

    .line 56
    goto :goto_9

    :cond_a
    move v1, v2

    .line 58
    goto :goto_a
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lcom/zhihu/android/base/util/SystemUtils;->e(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 149
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 150
    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v0, 0x1

    .line 154
    :cond_0
    return v0

    .line 149
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lcom/zhihu/android/base/util/SystemUtils;->e(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 158
    const-string v0, "sony"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/zhihu/android/base/util/SystemUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v2, "hasSystemFeature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lcom/zhihu/android/base/util/SystemUtils$SystemUtilsException;

    invoke-direct {v1, v0}, Lcom/zhihu/android/base/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
