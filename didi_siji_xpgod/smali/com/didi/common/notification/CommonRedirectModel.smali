.class public Lcom/didi/common/notification/CommonRedirectModel;
.super Ljava/lang/Object;
.source "CommonRedirectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;,
        Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;
    }
.end annotation


# static fields
.field public static final LINK_TYPE_EMPTY:I = 0x0

.field public static final LINK_TYPE_NATIVE:I = 0x2

.field public static final LINK_TYPE_WEB:I = 0x1


# instance fields
.field public content:Ljava/lang/String;

.field public linkType:I

.field public mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

.field public mWebRedirect:Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Lcom/didi/common/notification/CommonRedirectModel;->version:I

    .line 48
    new-instance v1, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    invoke-direct {v1, p0}, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;-><init>(Lcom/didi/common/notification/CommonRedirectModel;)V

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mWebRedirect:Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    .line 53
    new-instance v1, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    invoke-direct {v1, p0}, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;-><init>(Lcom/didi/common/notification/CommonRedirectModel;)V

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    .line 74
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->title:Ljava/lang/String;

    .line 75
    const-string v1, "content"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->content:Ljava/lang/String;

    .line 76
    const-string v1, "linkType"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    .line 77
    const-string v1, "version"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->version:I

    .line 78
    const-string v1, "linkContent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, linkJsonObject:Lorg/json/JSONObject;
    iget v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    packed-switch v1, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    invoke-direct {v1, p0}, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;-><init>(Lcom/didi/common/notification/CommonRedirectModel;)V

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mWebRedirect:Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    .line 87
    iget-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mWebRedirect:Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;->url:Ljava/lang/String;

    goto :goto_0

    .line 91
    :pswitch_2
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    invoke-direct {v1, p0}, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;-><init>(Lcom/didi/common/notification/CommonRedirectModel;)V

    iput-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    .line 93
    iget-object v1, p0, Lcom/didi/common/notification/CommonRedirectModel;->mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;->type:I

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
