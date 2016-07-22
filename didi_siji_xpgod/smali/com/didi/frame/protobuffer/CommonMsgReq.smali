.class public final Lcom/didi/frame/protobuffer/CommonMsgReq;
.super Lcom/squareup/wire/Message;
.source "CommonMsgReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CommonMsgReq$1;,
        Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RECOMMOND_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_RECOMMOND_TYPE:Ljava/lang/Integer;


# instance fields
.field public final recommond_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recommond_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CommonMsgReq;->DEFAULT_RECOMMOND_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 32
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;->recommond_msg:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;->recommond_type:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/CommonMsgReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CommonMsgReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;Lcom/didi/frame/protobuffer/CommonMsgReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CommonMsgReq;-><init>(Lcom/didi/frame/protobuffer/CommonMsgReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "recommond_msg"
    .parameter "recommond_type"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p1, p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CommonMsgReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/didi/frame/protobuffer/CommonMsgReq;

    .line 41
    .local v0, o:Lcom/didi/frame/protobuffer/CommonMsgReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CommonMsgReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CommonMsgReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 47
    iget v0, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->hashCode:I

    .line 48
    .local v0, result:I
    if-nez v0, :cond_1

    .line 49
    iget-object v2, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 50
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 51
    iput v0, p0, Lcom/didi/frame/protobuffer/CommonMsgReq;->hashCode:I

    .line 53
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method
