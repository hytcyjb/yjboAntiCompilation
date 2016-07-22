.class public Lcom/didi/common/model/ActivityData;
.super Lcom/didi/common/model/BaseObject;
.source "ActivityData.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public activityTitle:Ljava/lang/String;

.field public code:I

.field public picUrl:Ljava/lang/String;

.field public redirect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/didi/common/model/ActivityData;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, obj:Lcom/didi/common/model/ActivityData;
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    .end local v0           #obj:Lcom/didi/common/model/ActivityData;
    check-cast v0, Lcom/didi/common/model/ActivityData;

    .line 35
    .restart local v0       #obj:Lcom/didi/common/model/ActivityData;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/didi/common/model/ActivityData;->clone()Lcom/didi/common/model/ActivityData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/didi/common/model/ActivityData;->clone()Lcom/didi/common/model/ActivityData;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 25
    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/ActivityData;->activityTitle:Ljava/lang/String;

    .line 26
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/ActivityData;->code:I

    .line 27
    const-string v0, "pic_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    .line 28
    const-string v0, "redirect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/ActivityData;->redirect:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityData.toString--code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/common/model/ActivityData;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,picurl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,redirect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/ActivityData;->redirect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/ActivityData;->activityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, string:Ljava/lang/String;
    return-object v0
.end method
