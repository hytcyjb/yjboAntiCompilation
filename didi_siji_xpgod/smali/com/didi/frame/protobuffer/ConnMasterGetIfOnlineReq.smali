.class public final Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;
.super Lcom/squareup/wire/Message;
.source "ConnMasterGetIfOnlineReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$1;,
        Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_USER_ID:Ljava/util/List;
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
.field public final user_id:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->DEFAULT_USER_ID:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 25
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;->user_id:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;-><init>(Ljava/util/List;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, user_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    .line 22
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 33
    .end local p1
    :goto_0
    return v0

    .line 32
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    check-cast p1, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->hashCode:I

    .line 39
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
