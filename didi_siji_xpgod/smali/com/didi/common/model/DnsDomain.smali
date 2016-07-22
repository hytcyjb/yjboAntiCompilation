.class public Lcom/didi/common/model/DnsDomain;
.super Lcom/didi/common/model/BaseObject;
.source "DnsDomain.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/common/model/DnsDomain;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/common/model/DnsDomain;->domain:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/model/DnsDomain;->host:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 24
    const-string v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/DnsDomain;->domain:Ljava/lang/String;

    .line 25
    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/DnsDomain;->host:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/common/model/DnsDomain;->domain:Ljava/lang/String;

    .line 34
    return-void
.end method
