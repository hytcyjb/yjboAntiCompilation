.class public final Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
.super Lcom/squareup/wire/Message;
.source "MessageSvrGetMessagesRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$1;,
        Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MID:Ljava/lang/Long;

.field public static final DEFAULT_RC:Ljava/lang/Integer;


# instance fields
.field public final messages:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/InstantMessageMessage;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final mid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_RC:Ljava/lang/Integer;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MESSAGES:Ljava/util/List;

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MID:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 40
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->rc:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->messages:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->mid:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;-><init>(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;-><init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;)V
    .locals 1
    .parameter "rc"
    .parameter
    .parameter "mid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageMessage;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    .line 35
    invoke-static {p2}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    .line 37
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 46
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    .line 49
    .local v0, o:Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 56
    iget v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->hashCode:I

    .line 57
    .local v0, result:I
    if-nez v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 61
    iput v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->hashCode:I

    .line 63
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
