.class public final Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;
.super Lcom/squareup/wire/Message;
.source "SessionSvrGetSessionsRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$1;,
        Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RC:Ljava/lang/Integer;

.field public static final DEFAULT_SESSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final rc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sessions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/InstantMessageSession;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->DEFAULT_RC:Ljava/lang/Integer;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->DEFAULT_SESSIONS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 31
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->rc:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;->sessions:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .parameter "rc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageSession;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    .line 27
    invoke-static {p2}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 37
    if-ne p1, p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;

    .line 40
    .local v0, o:Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 46
    iget v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->hashCode:I

    .line 47
    .local v0, result:I
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 49
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 50
    iput v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetSessionsRsp;->hashCode:I

    .line 52
    :cond_0
    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method