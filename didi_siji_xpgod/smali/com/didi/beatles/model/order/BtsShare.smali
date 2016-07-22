.class public Lcom/didi/beatles/model/order/BtsShare;
.super Ljava/lang/Object;
.source "BtsShare.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/order/BtsShare$QQ;,
        Lcom/didi/beatles/model/order/BtsShare$Weibo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public button_icon:Ljava/lang/String;

.field public button_text:Ljava/lang/String;

.field public qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

.field public shareContent:Ljava/lang/String;

.field public shareEnable:Z

.field public sharePic:Ljava/lang/String;

.field public shareTitle:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BtsShare json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v3, "share_enable"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    .line 49
    const-string v2, "share_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->shareTitle:Ljava/lang/String;

    .line 50
    const-string v2, "share_pic"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->sharePic:Ljava/lang/String;

    .line 51
    const-string v2, "share_content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->shareContent:Ljava/lang/String;

    .line 52
    const-string v2, "share_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->shareUrl:Ljava/lang/String;

    .line 53
    const-string v2, "button_text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->button_text:Ljava/lang/String;

    .line 54
    const-string v2, "button_icon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    .line 55
    const-string v2, "weibo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    .local v1, wb:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 57
    new-instance v2, Lcom/didi/beatles/model/order/BtsShare$Weibo;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsShare$Weibo;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    .line 58
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    const-string v3, "weibo_share_title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_title:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    const-string v3, "weibo_share_pic"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_pic:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    const-string v3, "weibo_share_content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_content:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    const-string v3, "weibo_share_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_url:Ljava/lang/String;

    .line 66
    :goto_2
    const-string v2, "qq"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    .local v0, q:Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 68
    new-instance v2, Lcom/didi/beatles/model/order/BtsShare$QQ;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsShare$QQ;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    .line 69
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    const-string v3, "qq_share_title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_title:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    const-string v3, "qq_share_pic"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_pic:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    const-string v3, "qq_share_content"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_content:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    const-string v3, "qq_share_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_url:Ljava/lang/String;

    goto/16 :goto_0

    .line 48
    .end local v0           #q:Lorg/json/JSONObject;
    .end local v1           #wb:Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 63
    .restart local v1       #wb:Lorg/json/JSONObject;
    :cond_2
    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    goto :goto_2

    .line 74
    .restart local v0       #q:Lorg/json/JSONObject;
    :cond_3
    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtsShare [shareEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharePic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->sharePic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
