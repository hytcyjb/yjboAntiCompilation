.class public final Lcom/didi/frame/protobuffer/MessageSvrNotification;
.super Lcom/squareup/wire/Message;
.source "MessageSvrNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/MessageSvrNotification$1;,
        Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SESSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final messages:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
            ">;"
        }
    .end annotation
.end field

.field public final sessions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
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

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->DEFAULT_SESSIONS:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->DEFAULT_MESSAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 29
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->sessions:Ljava/util/List;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;->messages:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/MessageSvrNotification;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;Lcom/didi/frame/protobuffer/MessageSvrNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrNotification;-><init>(Lcom/didi/frame/protobuffer/MessageSvrNotification$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;>;"
    .local p2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    .line 25
    invoke-static {p2}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-static {p0}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 35
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/MessageSvrNotification;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;

    .line 38
    .local v0, o:Lcom/didi/frame/protobuffer/MessageSvrNotification;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrNotification;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 44
    iget v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->hashCode:I

    .line 45
    .local v0, result:I
    if-nez v0, :cond_1

    .line 46
    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 47
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 48
    iput v0, p0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->hashCode:I

    .line 50
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_0
.end method
