.class public Lcom/zhihu/android/api/model/Captcha;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Captcha.java"


# instance fields
.field public imageBase64:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "img_base64"
    .end annotation
.end field

.field public showCaptcha:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "show_captcha"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
