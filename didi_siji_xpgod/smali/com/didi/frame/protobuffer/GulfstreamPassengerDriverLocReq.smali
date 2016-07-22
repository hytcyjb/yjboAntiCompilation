.class public final Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
.super Lcom/squareup/wire/Message;
.source "GulfstreamPassengerDriverLocReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$1;,
        Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ETA:Ljava/lang/Integer; = null

.field public static final DEFAULT_ETA_DISTANCE:Ljava/lang/Integer; = null

.field public static final DEFAULT_ETA_STR:Ljava/lang/String; = ""

.field public static final DEFAULT_LOC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eta:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final eta_distance:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final eta_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final loc:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/DriverLocationInfo;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_LOC:Ljava/util/List;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_ETA:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_ETA_DISTANCE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 47
    iget-object v0, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->loc:Ljava/util/List;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_distance:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_str:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;-><init>(Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "eta"
    .parameter "eta_distance"
    .parameter "eta_str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, loc:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/DriverLocationInfo;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    .line 42
    iput-object p3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    .line 43
    iput-object p4, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 53
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    .line 56
    .local v0, o:Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    iget v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->hashCode:I

    .line 65
    .local v0, result:I
    if-nez v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 67
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 68
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 69
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 70
    iput v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->hashCode:I

    .line 72
    :cond_1
    return v0

    .line 66
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 67
    goto :goto_1

    :cond_4
    move v1, v2

    .line 68
    goto :goto_2
.end method
