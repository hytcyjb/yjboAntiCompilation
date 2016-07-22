.class public final Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;
.super Lcom/squareup/wire/Message;
.source "SessionSvrCheckObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$1;,
        Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FID:Ljava/lang/String; = ""

.field public static final DEFAULT_SID:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final fid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

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
    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->DEFAULT_SID:Ljava/lang/Long;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 35
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->sid:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->fid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "sid"
    .parameter "type"
    .parameter "fid"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    .line 31
    iput-object p3, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;

    .line 44
    .local v0, o:Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 51
    iget v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 55
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 56
    iput v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->hashCode:I

    .line 58
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0

    :cond_3
    move v2, v1

    .line 54
    goto :goto_1
.end method
