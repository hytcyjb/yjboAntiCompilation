.class public final Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectSvrCoordinateReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;",
        ">;"
    }
.end annotation


# instance fields
.field public acceleratedSpeedX:Ljava/lang/Float;

.field public acceleratedSpeedY:Ljava/lang/Float;

.field public acceleratedSpeedZ:Ljava/lang/Float;

.field public accuracy:Ljava/lang/Double;

.field public direction:Ljava/lang/Double;

.field public gps_source:Ljava/lang/Integer;

.field public includedAnglePitch:Ljava/lang/Float;

.field public includedAngleRoll:Ljava/lang/Float;

.field public includedAngleYaw:Ljava/lang/Float;

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;

.field public phone:Ljava/lang/String;

.field public pre_lat:Ljava/lang/Double;

.field public pre_lng:Ljava/lang/Double;

.field public pull_peer:Ljava/lang/Boolean;

.field public speed:Ljava/lang/Double;

.field public state:Ljava/lang/Integer;

.field public state_ext:Ljava/lang/Integer;

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 260
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 264
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->phone:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lng:Ljava/lang/Double;

    .line 267
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lat:Ljava/lang/Double;

    .line 268
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 269
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->accuracy:Ljava/lang/Double;

    .line 270
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->direction:Ljava/lang/Double;

    .line 271
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->speed:Ljava/lang/Double;

    .line 272
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    .line 273
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    .line 274
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 275
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleYaw:Ljava/lang/Float;

    .line 276
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleRoll:Ljava/lang/Float;

    .line 277
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAnglePitch:Ljava/lang/Float;

    .line 278
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pull_peer:Ljava/lang/Boolean;

    .line 279
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lng:Ljava/lang/Double;

    .line 280
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lat:Ljava/lang/Double;

    .line 281
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state:Ljava/lang/Integer;

    .line 282
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->gps_source:Ljava/lang/Integer;

    .line 283
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state_ext:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public acceleratedSpeedX(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "acceleratedSpeedX"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    .line 347
    return-object p0
.end method

.method public acceleratedSpeedY(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "acceleratedSpeedY"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    .line 355
    return-object p0
.end method

.method public acceleratedSpeedZ(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "acceleratedSpeedZ"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 363
    return-object p0
.end method

.method public accuracy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->accuracy:Ljava/lang/Double;

    .line 323
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    .locals 2

    .prologue
    .line 441
    new-instance v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;-><init>(Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->build()Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    move-result-object v0

    return-object v0
.end method

.method public direction(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "direction"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->direction:Ljava/lang/Double;

    .line 331
    return-object p0
.end method

.method public gps_source(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "gps_source"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->gps_source:Ljava/lang/Integer;

    .line 428
    return-object p0
.end method

.method public includedAnglePitch(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "includedAnglePitch"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAnglePitch:Ljava/lang/Float;

    .line 387
    return-object p0
.end method

.method public includedAngleRoll(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "includedAngleRoll"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleRoll:Ljava/lang/Float;

    .line 379
    return-object p0
.end method

.method public includedAngleYaw(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "includedAngleYaw"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleYaw:Ljava/lang/Float;

    .line 371
    return-object p0
.end method

.method public lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "lat"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lat:Ljava/lang/Double;

    .line 307
    return-object p0
.end method

.method public lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "lng"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lng:Ljava/lang/Double;

    .line 299
    return-object p0
.end method

.method public phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "phone"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->phone:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public pre_lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "pre_lat"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lat:Ljava/lang/Double;

    .line 412
    return-object p0
.end method

.method public pre_lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "pre_lng"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lng:Ljava/lang/Double;

    .line 404
    return-object p0
.end method

.method public pull_peer(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "pull_peer"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pull_peer:Ljava/lang/Boolean;

    .line 396
    return-object p0
.end method

.method public speed(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "speed"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->speed:Ljava/lang/Double;

    .line 339
    return-object p0
.end method

.method public state(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "state"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state:Ljava/lang/Integer;

    .line 420
    return-object p0
.end method

.method public state_ext(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "state_ext"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state_ext:Ljava/lang/Integer;

    .line 436
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 315
    return-object p0
.end method
