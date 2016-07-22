.class public final Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;
.super Lcom/squareup/wire/Message;
.source "TaxiPassengerPaySuccReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$1;,
        Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;,
        Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_DETAIL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ORDER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTAL:Ljava/lang/Float; = null

.field public static final DEFAULT_TRIP_ID:Ljava/lang/String; = ""


# instance fields
.field public final content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final detail:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public final order_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trip_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->DEFAULT_TOTAL:Ljava/lang/Float;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->DEFAULT_DETAIL:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 62
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->total:Ljava/lang/Float;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->detail:Ljava/util/List;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->trip_id:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;-><init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "order_id"
    .parameter "content"
    .parameter "total"
    .parameter
    .parameter "trip_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p4, detail:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    .line 57
    invoke-static {p4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    .line 58
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;

    .line 71
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 80
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->hashCode:I

    .line 81
    .local v0, result:I
    if-nez v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 83
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 84
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 85
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 86
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 87
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->hashCode:I

    .line 89
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    :cond_3
    move v2, v1

    .line 83
    goto :goto_1

    :cond_4
    move v2, v1

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const/4 v2, 0x1

    goto :goto_3
.end method
