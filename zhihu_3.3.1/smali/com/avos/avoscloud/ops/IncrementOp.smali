.class public Lcom/avos/avoscloud/ops/IncrementOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "IncrementOp.java"

# interfaces
.implements Lcom/avos/avoscloud/ops/SingleValueOp;


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "amount"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/ops/IncrementOp$1;
    }
.end annotation


# instance fields
.field protected amount:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Increment:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 34
    iput-object p2, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    .line 35
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 4
    .parameter

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/IncrementOp;->apply(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string v1, "__op"

    const-string v2, "Increment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "amount"

    iget-object v2, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/avos/avoscloud/ops/IncrementOp;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v1
.end method

.method public getAmount()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    return-object v0
.end method

.method public getValues()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/IncrementOp;->getValues()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/IncrementOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 50
    sget-object v0, Lcom/avos/avoscloud/ops/IncrementOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow op type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-class v0, Lcom/avos/avoscloud/ops/IncrementOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/IncrementOp;

    iget-object v0, v0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    move-object p1, p0

    .line 69
    :goto_0
    :pswitch_1
    return-object p1

    .line 58
    :pswitch_2
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    goto :goto_0

    .line 63
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/IncrementOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    move-object p1, v0

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not add or remove relation on an numberic value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object p1, p0

    .line 69
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setAmount(Ljava/lang/Number;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    .line 30
    return-void
.end method

.method public setValues(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    .line 22
    return-void
.end method
