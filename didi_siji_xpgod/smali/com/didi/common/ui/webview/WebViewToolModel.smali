.class public Lcom/didi/common/ui/webview/WebViewToolModel;
.super Ljava/lang/Object;
.source "WebViewToolModel.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

.field public redirect_url:Ljava/lang/String;

.field public resId:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolModel;->icon:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    return-void
.end method
