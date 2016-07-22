.class public final Lcom/alipay/apmobilesecuritysdk/http/UploadFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$1;,
        Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;)Lcom/alipay/apmobilesecuritysdk/http/a;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/http/b;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/b;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/http/d;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/d;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
