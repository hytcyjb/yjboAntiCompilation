.class public final Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiOrder;",
        ">;"
    }
.end annotation


# instance fields
.field public dist:Ljava/lang/Integer;

.field public extraInfo:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public fromLatitude:Ljava/lang/Double;

.field public fromLongitude:Ljava/lang/Double;

.field public mediaType:Ljava/lang/Integer;

.field public orderId:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public setOffTime:Ljava/lang/Long;

.field public timeLinessType:Ljava/lang/Integer;

.field public tip:Ljava/lang/Integer;

.field public to:Ljava/lang/String;

.field public toLatitude:Ljava/lang/Double;

.field public toLongitude:Ljava/lang/Double;

.field public voiceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiOrder;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 198
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->orderId:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->phone:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->mediaType:Ljava/lang/Integer;

    .line 202
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->timeLinessType:Ljava/lang/Integer;

    .line 203
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->setOffTime:Ljava/lang/Long;

    .line 204
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->from:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->to:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLatitude:Ljava/lang/Double;

    .line 207
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLongitude:Ljava/lang/Double;

    .line 208
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLatitude:Ljava/lang/Double;

    .line 209
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLongitude:Ljava/lang/Double;

    .line 210
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->extraInfo:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->tip:Ljava/lang/Integer;

    .line 212
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->dist:Ljava/lang/Integer;

    .line 213
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->voiceUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiOrder;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiOrder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiOrder;-><init>(Lcom/didi/frame/protobuffer/TaxiOrder$Builder;Lcom/didi/frame/protobuffer/TaxiOrder$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->build()Lcom/didi/frame/protobuffer/TaxiOrder;

    move-result-object v0

    return-object v0
.end method

.method public dist(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "dist"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->dist:Ljava/lang/Integer;

    .line 310
    return-object p0
.end method

.method public extraInfo(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "extraInfo"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->extraInfo:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "from"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->from:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public fromLatitude(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "fromLatitude"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLatitude:Ljava/lang/Double;

    .line 271
    return-object p0
.end method

.method public fromLongitude(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "fromLongitude"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLongitude:Ljava/lang/Double;

    .line 276
    return-object p0
.end method

.method public mediaType(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->mediaType:Ljava/lang/Integer;

    .line 234
    return-object p0
.end method

.method public orderId(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "orderId"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->orderId:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "phone"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->phone:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setOffTime(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "setOffTime"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->setOffTime:Ljava/lang/Long;

    .line 250
    return-object p0
.end method

.method public timeLinessType(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "timeLinessType"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->timeLinessType:Ljava/lang/Integer;

    .line 242
    return-object p0
.end method

.method public tip(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "tip"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->tip:Ljava/lang/Integer;

    .line 302
    return-object p0
.end method

.method public to(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "to"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->to:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public toLatitude(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "toLatitude"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLatitude:Ljava/lang/Double;

    .line 281
    return-object p0
.end method

.method public toLongitude(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "toLongitude"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLongitude:Ljava/lang/Double;

    .line 286
    return-object p0
.end method

.method public voiceUrl(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    .locals 0
    .parameter "voiceUrl"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->voiceUrl:Ljava/lang/String;

    .line 318
    return-object p0
.end method
