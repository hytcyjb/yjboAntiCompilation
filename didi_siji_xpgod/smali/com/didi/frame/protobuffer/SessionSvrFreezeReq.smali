.class public final Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;
.super Lcom/squareup/wire/Message;
.source "SessionSvrFreezeReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$1;,
        Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SID:Ljava/lang/Long;


# instance fields
.field public final sid:Ljava/lang/Long;
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
    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->DEFAULT_SID:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 23
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$Builder;->sid:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;-><init>(Ljava/lang/Long;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrFreezeReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->sid:Ljava/lang/Long;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 29
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 31
    .end local p1
    :goto_0
    return v0

    .line 30
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->sid:Ljava/lang/Long;

    check-cast p1, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->hashCode:I

    .line 37
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->sid:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->sid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/SessionSvrFreezeReq;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
