.class public final Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FreeRideDigAddressReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;",
        ">;"
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public alertText:Ljava/lang/String;

.field public expireTime:Ljava/lang/Integer;

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;

.field public pushTime:Ljava/lang/Integer;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 148
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lng:Ljava/lang/Double;

    .line 150
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lat:Ljava/lang/Double;

    .line 151
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 152
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->address:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->title:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->text:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->alertText:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->pushTime:Ljava/lang/Integer;

    .line 157
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->expireTime:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public address(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "address"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->address:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public alertText(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "alertText"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->alertText:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->checkRequiredFields()V

    .line 235
    new-instance v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;-><init>(Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->build()Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;

    move-result-object v0

    return-object v0
.end method

.method public expireTime(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "expireTime"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->expireTime:Ljava/lang/Integer;

    .line 229
    return-object p0
.end method

.method public lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "lat"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lat:Ljava/lang/Double;

    .line 173
    return-object p0
.end method

.method public lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "lng"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lng:Ljava/lang/Double;

    .line 165
    return-object p0
.end method

.method public pushTime(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "pushTime"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->pushTime:Ljava/lang/Integer;

    .line 221
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->text:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->title:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 181
    return-object p0
.end method
