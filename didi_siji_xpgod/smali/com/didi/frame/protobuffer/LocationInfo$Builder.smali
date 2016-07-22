.class public final Lcom/didi/frame/protobuffer/LocationInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/LocationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public acceleratedSpeedX:Ljava/lang/Float;

.field public acceleratedSpeedY:Ljava/lang/Float;

.field public acceleratedSpeedZ:Ljava/lang/Float;

.field public accuracy:Ljava/lang/Double;

.field public direction:Ljava/lang/Double;

.field public includedAnglePitch:Ljava/lang/Float;

.field public includedAngleRoll:Ljava/lang/Float;

.field public includedAngleYaw:Ljava/lang/Float;

.field public locType:Lcom/didi/frame/protobuffer/LocationType;

.field public speed:Ljava/lang/Double;

.field public timestamp:Ljava/lang/Integer;

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;

.field public x:Ljava/lang/Double;

.field public y:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/LocationInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 197
    if-nez p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->x:Ljava/lang/Double;

    .line 199
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->y:Ljava/lang/Double;

    .line 200
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 201
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->accuracy:Ljava/lang/Double;

    .line 202
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->direction:Ljava/lang/Double;

    .line 203
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->speed:Ljava/lang/Double;

    .line 204
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    .line 205
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    .line 206
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 207
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleYaw:Ljava/lang/Float;

    .line 208
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleRoll:Ljava/lang/Float;

    .line 209
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAnglePitch:Ljava/lang/Float;

    .line 210
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->timestamp:Ljava/lang/Integer;

    .line 211
    iget-object v0, p1, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->locType:Lcom/didi/frame/protobuffer/LocationType;

    goto :goto_0
.end method


# virtual methods
.method public acceleratedSpeedX(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "acceleratedSpeedX"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    .line 261
    return-object p0
.end method

.method public acceleratedSpeedY(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "acceleratedSpeedY"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    .line 269
    return-object p0
.end method

.method public acceleratedSpeedZ(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "acceleratedSpeedZ"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 277
    return-object p0
.end method

.method public accuracy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->accuracy:Ljava/lang/Double;

    .line 237
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/LocationInfo;
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->checkRequiredFields()V

    .line 320
    new-instance v0, Lcom/didi/frame/protobuffer/LocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/LocationInfo;-><init>(Lcom/didi/frame/protobuffer/LocationInfo$Builder;Lcom/didi/frame/protobuffer/LocationInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->build()Lcom/didi/frame/protobuffer/LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public direction(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "direction"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->direction:Ljava/lang/Double;

    .line 245
    return-object p0
.end method

.method public includedAnglePitch(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "includedAnglePitch"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAnglePitch:Ljava/lang/Float;

    .line 301
    return-object p0
.end method

.method public includedAngleRoll(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "includedAngleRoll"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleRoll:Ljava/lang/Float;

    .line 293
    return-object p0
.end method

.method public includedAngleYaw(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "includedAngleYaw"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleYaw:Ljava/lang/Float;

    .line 285
    return-object p0
.end method

.method public locType(Lcom/didi/frame/protobuffer/LocationType;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "locType"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->locType:Lcom/didi/frame/protobuffer/LocationType;

    .line 314
    return-object p0
.end method

.method public speed(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "speed"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->speed:Ljava/lang/Double;

    .line 253
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->timestamp:Ljava/lang/Integer;

    .line 309
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 229
    return-object p0
.end method

.method public x(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "x"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->x:Ljava/lang/Double;

    .line 216
    return-object p0
.end method

.method public y(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    .locals 0
    .parameter "y"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->y:Ljava/lang/Double;

    .line 221
    return-object p0
.end method
