.class public final Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;
.super Lcom/squareup/wire/Message;
.source "CdntSvrDelRelationReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$1;,
        Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCAL_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final local_ids:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->DEFAULT_LOCAL_IDS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 38
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->user_id:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->local_ids:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;-><init>(Ljava/lang/Long;Ljava/util/List;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/List;)V
    .locals 1
    .parameter "user_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, local_ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    .line 34
    invoke-static {p2}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 44
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;

    .line 47
    .local v0, o:Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->hashCode:I

    .line 54
    .local v0, result:I
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 56
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 57
    iput v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->hashCode:I

    .line 59
    :cond_0
    return v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
