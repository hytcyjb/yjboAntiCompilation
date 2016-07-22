.class public final Lcom/didi/frame/protobuffer/SessionSvrCreateReq;
.super Lcom/squareup/wire/Message;
.source "SessionSvrCreateReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/SessionSvrCreateReq$1;,
        Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRODUCT:Ljava/lang/Long;

.field public static final DEFAULT_UID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final product:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final uid:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->DEFAULT_UID:Ljava/util/List;

    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->DEFAULT_PRODUCT:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 30
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->uid:Ljava/util/List;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;->product:Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;-><init>(Ljava/util/List;Ljava/lang/Long;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrCreateReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrCreateReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter "product"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, uid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    .line 27
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 36
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;

    .line 39
    .local v0, o:Lcom/didi/frame/protobuffer/SessionSvrCreateReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 45
    iget v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->hashCode:I

    .line 46
    .local v0, result:I
    if-nez v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->uid:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->product:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 49
    iput v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCreateReq;->hashCode:I

    .line 51
    :cond_0
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
