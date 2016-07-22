.class public final Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;
.super Lcom/squareup/wire/Message;
.source "BeatlesDriverNewOrderTipReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$1;,
        Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER_LIST_TYPE:Ljava/lang/Integer;


# instance fields
.field public final order_list_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->DEFAULT_ORDER_LIST_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 26
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$Builder;->order_list_type:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;-><init>(Ljava/lang/Integer;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$Builder;Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;-><init>(Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .parameter "order_list_type"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 32
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 34
    .end local p1
    :goto_0
    return v0

    .line 33
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    check-cast p1, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->hashCode:I

    .line 40
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
