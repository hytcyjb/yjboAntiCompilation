.class public final Lcom/didi/frame/protobuffer/Address;
.super Lcom/squareup/wire/Message;
.source "Address.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/Address$1;,
        Lcom/didi/frame/protobuffer/Address$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_PORT:Ljava/lang/Integer;

.field public static final DEFAULT_SHOULD_STAT:Ljava/lang/Boolean;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;


# instance fields
.field public final ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final port:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final should_stat:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Address;->DEFAULT_PORT:Ljava/lang/Integer;

    .line 22
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Address;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    .line 23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Address;->DEFAULT_SHOULD_STAT:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/Address$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 57
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Address$Builder;->ip:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/Address$Builder;->port:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/Address$Builder;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/Address$Builder;->should_stat:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/Address;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/Address;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/Address$Builder;Lcom/didi/frame/protobuffer/Address$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/Address;-><init>(Lcom/didi/frame/protobuffer/Address$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "timestamp"
    .parameter "should_stat"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    .line 52
    iput-object p3, p0, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    .line 53
    iput-object p4, p0, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/Address;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/didi/frame/protobuffer/Address;

    .line 66
    .local v0, o:Lcom/didi/frame/protobuffer/Address;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Address;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Address;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Address;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Address;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 74
    iget v0, p0, Lcom/didi/frame/protobuffer/Address;->hashCode:I

    .line 75
    .local v0, result:I
    if-nez v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 78
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 80
    iput v0, p0, Lcom/didi/frame/protobuffer/Address;->hashCode:I

    .line 82
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    :cond_3
    move v2, v1

    .line 77
    goto :goto_1

    :cond_4
    move v2, v1

    .line 78
    goto :goto_2
.end method
