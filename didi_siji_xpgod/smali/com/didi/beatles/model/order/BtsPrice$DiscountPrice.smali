.class public Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;
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
    name = "DiscountPrice"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1a41f91a235cae6bL


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public selectUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/didi/beatles/model/order/BtsPrice;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/didi/beatles/model/order/BtsPrice;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter "jsonObj"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->this$0:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "d_id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->id:Ljava/lang/String;

    .line 95
    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->name:Ljava/lang/String;

    .line 96
    const-string v0, "price"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->price:Ljava/lang/String;

    .line 97
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    .line 98
    const-string v0, "select_url"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->selectUrl:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public equals(Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->id:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->price:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->price:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    iget v1, p1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->selectUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->selectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
