.class public final Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;
.super Lcom/squareup/wire/Message;
.source "MessageSvrNewObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$1;,
        Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SID:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final sid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->DEFAULT_SID:Ljava/lang/Long;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 29
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;->sid:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;->type:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0
    .parameter "sid"
    .parameter "type"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->sid:Ljava/lang/Long;

    .line 25
    iput-object p2, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->type:Ljava/lang/Integer;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;

    .line 38
    .local v0, o:Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->sid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 44
    iget v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->hashCode:I

    .line 45
    .local v0, result:I
    if-nez v0, :cond_1

    .line 46
    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->sid:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 47
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->type:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 48
    iput v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNewObjectReq;->hashCode:I

    .line 50
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_0
.end method
