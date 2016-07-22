.class public final Lcom/didi/frame/protobuffer/PassengerPayStatusReq;
.super Lcom/squareup/wire/Message;
.source "PassengerPayStatusReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PassengerPayStatusReq$1;,
        Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_TRADE_STATUS:Ljava/lang/Integer;


# instance fields
.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
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
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->DEFAULT_TRADE_STATUS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 46
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->oid:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->trade_status:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->token:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;Lcom/didi/frame/protobuffer/PassengerPayStatusReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;-><init>(Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "oid"
    .parameter "trade_status"
    .parameter "token"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    .line 42
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;

    .line 55
    .local v0, o:Lcom/didi/frame/protobuffer/PassengerPayStatusReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 62
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->hashCode:I

    .line 63
    .local v0, result:I
    if-nez v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->trade_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 66
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 67
    iput v0, p0, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->hashCode:I

    .line 69
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    :cond_3
    move v2, v1

    .line 65
    goto :goto_1
.end method
