.class public Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;
.super Ljava/lang/Object;
.source "BtsPrice.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/order/BtsPrice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NormalPrice"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x180cc539516316e1L


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public price:D

.field final synthetic this$0:Lcom/didi/beatles/model/order/BtsPrice;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/model/order/BtsPrice;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter "jsonObj"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->this$0:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "n_id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->id:Ljava/lang/String;

    .line 72
    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->name:Ljava/lang/String;

    .line 73
    const-string v0, "price"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->price:D

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->id:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->price:D

    iget-wide v2, p1, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->price:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
