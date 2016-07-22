.class public final Lcom/didi/frame/protobuffer/PushSvrMultiRsp;
.super Lcom/squareup/wire/Message;
.source "PushSvrMultiRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushSvrMultiRsp$1;,
        Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RSPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final rsps:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/RspMsg;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->DEFAULT_RSPS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 27
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;->rsps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;-><init>(Ljava/util/List;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;)V

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
            "Lcom/didi/frame/protobuffer/RspMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, rsps:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/RspMsg;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    .line 24
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 33
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 35
    .end local p1
    :goto_0
    return v0

    .line 34
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    check-cast p1, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->hashCode:I

    .line 41
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
