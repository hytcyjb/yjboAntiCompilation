.class public final Lcom/didi/frame/protobuffer/UserAgent;
.super Lcom/squareup/wire/Message;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/UserAgent$1;,
        Lcom/didi/frame/protobuffer/UserAgent$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CARRIER_OPERATOR:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_VER:Ljava/lang/String; = ""

.field public static final DEFAULT_LOCATION:Ljava/lang/String; = ""

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_NETWORK:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_VER:Ljava/lang/String; = ""


# instance fields
.field public final carrier_operator:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final client_ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final location:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final network:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/UserAgent$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 76
    iget-object v1, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_type:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->model:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->client_ver:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->network:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->location:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/UserAgent$Builder;->carrier_operator:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/protobuffer/UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/UserAgent;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/UserAgent$Builder;Lcom/didi/frame/protobuffer/UserAgent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/UserAgent;-><init>(Lcom/didi/frame/protobuffer/UserAgent$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "os_type"
    .parameter "os_ver"
    .parameter "model"
    .parameter "client_ver"
    .parameter "network"
    .parameter "location"
    .parameter "carrier_operator"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    .line 72
    iput-object p7, p0, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/UserAgent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/didi/frame/protobuffer/UserAgent;

    .line 85
    .local v0, o:Lcom/didi/frame/protobuffer/UserAgent;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/UserAgent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 96
    iget v0, p0, Lcom/didi/frame/protobuffer/UserAgent;->hashCode:I

    .line 97
    .local v0, result:I
    if-nez v0, :cond_1

    .line 98
    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 99
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->os_ver:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 100
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 101
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->client_ver:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->network:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/UserAgent;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/UserAgent;->carrier_operator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 105
    iput v0, p0, Lcom/didi/frame/protobuffer/UserAgent;->hashCode:I

    .line 107
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0

    :cond_3
    move v2, v1

    .line 99
    goto :goto_1

    :cond_4
    move v2, v1

    .line 100
    goto :goto_2

    :cond_5
    move v2, v1

    .line 101
    goto :goto_3

    :cond_6
    move v2, v1

    .line 102
    goto :goto_4

    :cond_7
    move v2, v1

    .line 103
    goto :goto_5
.end method
