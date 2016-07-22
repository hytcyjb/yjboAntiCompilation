.class public final Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;
.super Lcom/squareup/wire/Message;
.source "ConnMasterGetOnlineRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$1;,
        Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;
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
.field public final rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation
.end field

.field public final user_id:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
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
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->DEFAULT_USER_ID:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 36
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;->user_id:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;-><init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/util/List;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/util/List;)V
    .locals 1
    .parameter "rsp_msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, user_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 32
    invoke-static {p2}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->user_id:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 42
    if-ne p1, p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;

    .line 45
    .local v0, o:Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->user_id:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->user_id:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 51
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/RspMsg;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->user_id:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->user_id:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 55
    iput v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineRsp;->hashCode:I

    .line 57
    :cond_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
