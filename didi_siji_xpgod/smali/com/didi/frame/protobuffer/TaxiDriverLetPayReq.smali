.class public final Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
.super Lcom/squareup/wire/Message;
.source "TaxiDriverLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$1;,
        Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;,
        Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETAIL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IS_UPDATE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_ORDER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_TOAST_CONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTAL:Ljava/lang/Float;


# instance fields
.field public final detail:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public final is_update:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final toast_content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
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

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_TOTAL:Ljava/lang/Float;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_DETAIL:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_IS_UPDATE:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 63
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->total:Ljava/lang/Float;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->detail:Ljava/util/List;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->toast_content:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->is_update:Ljava/lang/Boolean;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "order_id"
    .parameter "total"
    .parameter
    .parameter "toast_content"
    .parameter "is_update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, detail:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    .line 57
    invoke-static {p3}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    .line 60
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 69
    if-ne p1, p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    .line 72
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 81
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->hashCode:I

    .line 82
    .local v0, result:I
    if-nez v0, :cond_1

    .line 83
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 84
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 85
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 86
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 87
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 88
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->hashCode:I

    .line 90
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0

    :cond_3
    move v2, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v1

    .line 86
    goto :goto_3
.end method
