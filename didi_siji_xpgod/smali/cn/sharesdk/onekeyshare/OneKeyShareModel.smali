.class public Lcn/sharesdk/onekeyshare/OneKeyShareModel;
.super Ljava/lang/Object;
.source "OneKeyShareModel.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public content:Ljava/lang/String;

.field public imgPath:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public mPlatform:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 1
    .parameter "platform"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->mPlatform:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method
