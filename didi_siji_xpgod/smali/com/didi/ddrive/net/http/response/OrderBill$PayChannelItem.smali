.class public Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
.super Ljava/lang/Object;
.source "OrderBill.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/OrderBill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayChannelItem"
.end annotation


# static fields
.field public static final ALI_PAY:I = 0x1

.field public static final CASH_PAY:D = 3.0

.field public static final LIMIT:I = 0x2

.field public static final WEIXIN_PAY:I = 0x2


# instance fields
.field public des:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .line 52
    .local v0, item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    iget v2, v0, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    iget v3, p0, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
