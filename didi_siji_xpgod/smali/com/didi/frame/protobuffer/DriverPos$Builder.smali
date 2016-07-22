.class public final Lcom/didi/frame/protobuffer/DriverPos$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DriverPos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DriverPos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DriverPos;",
        ">;"
    }
.end annotation


# instance fields
.field public arrived_time:Ljava/lang/Integer;

.field public distance:Ljava/lang/Float;

.field public distance_enabled:Ljava/lang/Integer;

.field public pos:Lcom/didi/frame/protobuffer/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DriverPos;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    .line 79
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->arrived_time:Ljava/lang/Integer;

    .line 80
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance:Ljava/lang/Float;

    .line 81
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance_enabled:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public arrived_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverPos$Builder;
    .locals 0
    .parameter "arrived_time"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->arrived_time:Ljava/lang/Integer;

    .line 91
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/DriverPos;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/didi/frame/protobuffer/DriverPos;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DriverPos;-><init>(Lcom/didi/frame/protobuffer/DriverPos$Builder;Lcom/didi/frame/protobuffer/DriverPos$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DriverPos$Builder;->build()Lcom/didi/frame/protobuffer/DriverPos;

    move-result-object v0

    return-object v0
.end method

.method public distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DriverPos$Builder;
    .locals 0
    .parameter "distance"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance:Ljava/lang/Float;

    .line 96
    return-object p0
.end method

.method public distance_enabled(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverPos$Builder;
    .locals 0
    .parameter "distance_enabled"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance_enabled:Ljava/lang/Integer;

    .line 101
    return-object p0
.end method

.method public pos(Lcom/didi/frame/protobuffer/Coordinate;)Lcom/didi/frame/protobuffer/DriverPos$Builder;
    .locals 0
    .parameter "pos"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverPos$Builder;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    .line 86
    return-object p0
.end method
