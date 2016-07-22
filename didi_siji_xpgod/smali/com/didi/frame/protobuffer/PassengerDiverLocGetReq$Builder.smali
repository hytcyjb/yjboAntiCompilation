.class public final Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PassengerDiverLocGetReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;",
        ">;"
    }
.end annotation


# instance fields
.field public channel:Ljava/lang/Integer;

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;

.field public order_stat:Lcom/didi/frame/protobuffer/OrderStat;

.field public phone_num:Ljava/lang/String;

.field public radius:Ljava/lang/Double;

.field public role:Ljava/lang/Integer;

.field public timestamp:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 124
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->phone_num:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->role:Ljava/lang/Integer;

    .line 127
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lat:Ljava/lang/Double;

    .line 128
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lng:Ljava/lang/Double;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->radius:Ljava/lang/Double;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->channel:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->type:Ljava/lang/Integer;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->checkRequiredFields()V

    .line 184
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;-><init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;

    move-result-object v0

    return-object v0
.end method

.method public channel(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "channel"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->channel:Ljava/lang/Integer;

    .line 163
    return-object p0
.end method

.method public lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "lat"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lat:Ljava/lang/Double;

    .line 148
    return-object p0
.end method

.method public lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "lng"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lng:Ljava/lang/Double;

    .line 153
    return-object p0
.end method

.method public order_stat(Lcom/didi/frame/protobuffer/OrderStat;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "order_stat"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 178
    return-object p0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->phone_num:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public radius(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "radius"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->radius:Ljava/lang/Double;

    .line 158
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->role:Ljava/lang/Integer;

    .line 143
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 173
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->type:Ljava/lang/Integer;

    .line 168
    return-object p0
.end method
