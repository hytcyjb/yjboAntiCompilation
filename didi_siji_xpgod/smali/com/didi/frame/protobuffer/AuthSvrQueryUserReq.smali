.class public final Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;
.super Lcom/squareup/wire/Message;
.source "AuthSvrQueryUserReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$1;,
        Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;


# instance fields
.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 36
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->role:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "phone_num"
    .parameter "role"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    .line 33
    return-void
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
    instance-of v3, p1, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;

    .line 45
    .local v0, o:Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 55
    iput v0, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->hashCode:I

    .line 57
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0
.end method
