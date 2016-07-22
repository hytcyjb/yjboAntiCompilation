.class public Lcom/sdu/didi/lib/SecurityLib;
.super Ljava/lang/Object;
.source "SecurityLib.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    :try_start_0
    const-string v1, "security"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 21
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native decodeToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native encodeToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native generateSeq()Ljava/lang/String;
.end method

.method private static native generateSig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native generateVerifyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->generateSeq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/16 v1, 0x800

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/sdu/didi/lib/SecurityLib;->generateSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVerifyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sdu/didi/lib/SecurityLib;->generateVerifyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
