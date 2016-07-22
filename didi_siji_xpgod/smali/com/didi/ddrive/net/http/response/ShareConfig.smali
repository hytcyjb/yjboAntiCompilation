.class public Lcom/didi/ddrive/net/http/response/ShareConfig;
.super Ljava/lang/Object;
.source "ShareConfig.java"


# instance fields
.field public layerImageUrl:Ljava/lang/String;

.field public popLayerTime:I

.field public shareButtonLater:Ljava/lang/String;

.field public shareButtonSend:Ljava/lang/String;

.field public shareText:Ljava/lang/String;

.field public shareTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/ShareConfig;->layerImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
