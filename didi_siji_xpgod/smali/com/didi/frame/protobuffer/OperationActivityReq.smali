.class public final Lcom/didi/frame/protobuffer/OperationActivityReq;
.super Lcom/squareup/wire/Message;
.source "OperationActivityReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OperationActivityReq$1;,
        Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTIVITY_DED:Ljava/lang/String; = ""

.field public static final DEFAULT_ACTIVITY_DOC:Ljava/lang/String; = ""


# instance fields
.field public final activity_ded:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final activity_doc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 36
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_doc:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;->activity_ded:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/OperationActivityReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/OperationActivityReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;Lcom/didi/frame/protobuffer/OperationActivityReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OperationActivityReq;-><init>(Lcom/didi/frame/protobuffer/OperationActivityReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity_doc"
    .parameter "activity_ded"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

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
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OperationActivityReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/didi/frame/protobuffer/OperationActivityReq;

    .line 45
    .local v0, o:Lcom/didi/frame/protobuffer/OperationActivityReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OperationActivityReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OperationActivityReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 55
    iput v0, p0, Lcom/didi/frame/protobuffer/OperationActivityReq;->hashCode:I

    .line 57
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0
.end method
