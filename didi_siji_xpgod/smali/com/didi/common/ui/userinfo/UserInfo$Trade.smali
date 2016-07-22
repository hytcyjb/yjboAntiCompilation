.class public Lcom/didi/common/ui/userinfo/UserInfo$Trade;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trade"
.end annotation


# instance fields
.field public id:I

.field public tradeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "tradeName"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    .line 30
    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, result:Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .line 50
    .local v0, other:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    iget v2, v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    iget v3, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    iget-object v3, v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v1, 0x1

    .line 55
    .end local v0           #other:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected parse(Lorg/json/JSONObject;)Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .locals 1
    .parameter "obj"

    .prologue
    .line 34
    const-string v0, "list_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    .line 35
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    return-object v0
.end method
