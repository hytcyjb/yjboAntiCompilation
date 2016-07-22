.class public final Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
.super Lcom/squareup/wire/Message;
.source "PeerCoordinateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PeerCoordinateInfo$1;,
        Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISTANCE:Ljava/lang/Integer; = null

.field public static final DEFAULT_IS_ARRIVED_LIMITED:Ljava/lang/Boolean; = null

.field public static final DEFAULT_LOCAL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_WAIT_TIME:Ljava/lang/Integer;


# instance fields
.field public final coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation
.end field

.field public final distance:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_arrived_limited:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final local_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final wait_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_DISTANCE:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_WAIT_TIME:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_IS_ARRIVED_LIMITED:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 62
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->local_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->distance:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->wait_time:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->is_arrived_limited:Ljava/lang/Boolean;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;-><init>(Ljava/lang/String;Lcom/didi/frame/protobuffer/Coordinate;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;Lcom/didi/frame/protobuffer/PeerCoordinateInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;-><init>(Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/didi/frame/protobuffer/Coordinate;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "local_id"
    .parameter "coordinate"
    .parameter "distance"
    .parameter "wait_time"
    .parameter "is_arrived_limited"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    .line 56
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    .line 57
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    .line 58
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    .line 71
    .local v0, o:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 80
    iget v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->hashCode:I

    .line 81
    .local v0, result:I
    if-nez v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 83
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/Coordinate;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 84
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 85
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 86
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 87
    iput v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->hashCode:I

    .line 89
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    :cond_3
    move v2, v1

    .line 83
    goto :goto_1

    :cond_4
    move v2, v1

    .line 84
    goto :goto_2

    :cond_5
    move v2, v1

    .line 85
    goto :goto_3
.end method
