.class public final Lcom/didi/frame/protobuffer/OrderPaySuccReq;
.super Lcom/squareup/wire/Message;
.source "OrderPaySuccReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OrderPaySuccReq$1;,
        Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_INFO:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_ORDER_SUBTITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_PAY_ORDER_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_REFUND_STATUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_SHARE_COUPON:Ljava/lang/String; = ""

.field public static final DEFAULT_TRADE_STATUS:Ljava/lang/Integer;


# instance fields
.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_order_subtitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pay_order_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final refund_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final share_coupon:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trade_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->DEFAULT_TRADE_STATUS:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->DEFAULT_REFUND_STATUS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 78
    iget-object v1, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->oid:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->trade_status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_title:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_order_subtitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->pay_info:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->share_coupon:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;->refund_status:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;Lcom/didi/frame/protobuffer/OrderPaySuccReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;-><init>(Lcom/didi/frame/protobuffer/OrderPaySuccReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "oid"
    .parameter "trade_status"
    .parameter "pay_order_title"
    .parameter "pay_order_subtitle"
    .parameter "pay_info"
    .parameter "share_coupon"
    .parameter "refund_status"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    .line 70
    iput-object p3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    .line 74
    iput-object p7, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    .line 87
    .local v0, o:Lcom/didi/frame/protobuffer/OrderPaySuccReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->hashCode:I

    .line 99
    .local v0, result:I
    if-nez v0, :cond_1

    .line 100
    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 101
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 105
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->refund_status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 107
    iput v0, p0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->hashCode:I

    .line 109
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    :cond_3
    move v2, v1

    .line 101
    goto :goto_1

    :cond_4
    move v2, v1

    .line 102
    goto :goto_2

    :cond_5
    move v2, v1

    .line 103
    goto :goto_3

    :cond_6
    move v2, v1

    .line 104
    goto :goto_4

    :cond_7
    move v2, v1

    .line 105
    goto :goto_5
.end method
