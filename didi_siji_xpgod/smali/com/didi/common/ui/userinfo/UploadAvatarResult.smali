.class public Lcom/didi/common/ui/userinfo/UploadAvatarResult;
.super Lcom/didi/common/model/BaseObject;
.source "UploadAvatarResult.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UploadAvatarResult;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 20
    const-string v0, "head_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UploadAvatarResult;->avatarUrl:Ljava/lang/String;

    .line 21
    return-void
.end method
