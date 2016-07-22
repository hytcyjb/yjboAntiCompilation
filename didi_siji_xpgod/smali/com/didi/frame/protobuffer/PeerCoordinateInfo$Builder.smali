.class public final Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PeerCoordinateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PeerCoordinateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public coordinate:Lcom/didi/frame/protobuffer/Coordinate;

.field public distance:Ljava/lang/Integer;

.field public is_arrived_limited:Ljava/lang/Boolean;

.field public local_id:Ljava/lang/String;

.field public wait_time:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 105
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->local_id:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    .line 108
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->distance:Ljava/lang/Integer;

    .line 109
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->wait_time:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->is_arrived_limited:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->checkRequiredFields()V

    .line 156
    new-instance v0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;-><init>(Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;Lcom/didi/frame/protobuffer/PeerCoordinateInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->build()Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    move-result-object v0

    return-object v0
.end method

.method public coordinate(Lcom/didi/frame/protobuffer/Coordinate;)Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    .locals 0
    .parameter "coordinate"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    .line 126
    return-object p0
.end method

.method public distance(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    .locals 0
    .parameter "distance"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->distance:Ljava/lang/Integer;

    .line 134
    return-object p0
.end method

.method public is_arrived_limited(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    .locals 0
    .parameter "is_arrived_limited"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->is_arrived_limited:Ljava/lang/Boolean;

    .line 150
    return-object p0
.end method

.method public local_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    .locals 0
    .parameter "local_id"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->local_id:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public wait_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;
    .locals 0
    .parameter "wait_time"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateInfo$Builder;->wait_time:Ljava/lang/Integer;

    .line 142
    return-object p0
.end method
