.class public Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsCheckOrderPayStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 17
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CREATE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    .line 48
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->status:I

    .line 24
    iget v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->status:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CREATE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_FAIL:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_SUCCESS:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CLOSE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtsCheckOrderPayStatus [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;->payStatus:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
