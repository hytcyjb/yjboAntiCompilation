.class public Lcom/didi/beatles/model/order/BtsSessionOrder;
.super Ljava/lang/Object;
.source "BtsSessionOrder.java"


# instance fields
.field private ID:I

.field private SID:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->ID:I

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setID(I)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 26
    iput p1, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->ID:I

    .line 27
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->orderId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 0
    .parameter "SID"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->SID:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/didi/beatles/model/order/BtsSessionOrder;->title:Ljava/lang/String;

    .line 17
    return-void
.end method
