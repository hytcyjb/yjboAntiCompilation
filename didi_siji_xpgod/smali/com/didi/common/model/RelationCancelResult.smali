.class public Lcom/didi/common/model/RelationCancelResult;
.super Lcom/didi/common/model/BaseObject;
.source "RelationCancelResult.java"


# instance fields
.field pushRelationFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/model/RelationCancelResult;->pushRelationFlag:I

    return-void
.end method


# virtual methods
.method public needCancelRelation()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/common/model/RelationCancelResult;->pushRelationFlag:I

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
    .line 22
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 24
    const-string v0, "relation_del"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "relation_del"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/RelationCancelResult;->pushRelationFlag:I

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/model/RelationCancelResult;->pushRelationFlag:I

    goto :goto_0
.end method
