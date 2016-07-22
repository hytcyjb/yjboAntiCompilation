.class public final Lcom/didi/frame/protobuffer/Coordinate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Coordinate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/Coordinate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/Coordinate;",
        ">;"
    }
.end annotation


# instance fields
.field public angle:Ljava/lang/Integer;

.field public dx:Ljava/lang/Double;

.field public dy:Ljava/lang/Double;

.field public timestamp:Ljava/lang/Integer;

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;

.field public x:Ljava/lang/Double;

.field public y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Coordinate;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 117
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->x:Ljava/lang/Double;

    .line 119
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->y:Ljava/lang/Double;

    .line 120
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 121
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->timestamp:Ljava/lang/Integer;

    .line 122
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dx:Ljava/lang/Double;

    .line 123
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dy:Ljava/lang/Double;

    .line 124
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->angle:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public angle(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "angle"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->angle:Ljava/lang/Integer;

    .line 168
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/Coordinate;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->checkRequiredFields()V

    .line 174
    new-instance v0, Lcom/didi/frame/protobuffer/Coordinate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/Coordinate;-><init>(Lcom/didi/frame/protobuffer/Coordinate$Builder;Lcom/didi/frame/protobuffer/Coordinate$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->build()Lcom/didi/frame/protobuffer/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public dx(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "dx"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dx:Ljava/lang/Double;

    .line 155
    return-object p0
.end method

.method public dy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "dy"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dy:Ljava/lang/Double;

    .line 160
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->timestamp:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 142
    return-object p0
.end method

.method public x(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "x"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->x:Ljava/lang/Double;

    .line 129
    return-object p0
.end method

.method public y(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .locals 0
    .parameter "y"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate$Builder;->y:Ljava/lang/Double;

    .line 134
    return-object p0
.end method
