.class public final Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PassengerDiverLocGetByIdReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;",
        ">;"
    }
.end annotation


# instance fields
.field public channel:Ljava/lang/Integer;

.field public diverIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;

.field public order_stat:Lcom/didi/frame/protobuffer/OrderStat;

.field public phone_num:Ljava/lang/String;

.field public role:Ljava/lang/Integer;

.field public timestamp:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 131
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->phone_num:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->role:Ljava/lang/Integer;

    .line 134
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->channel:Ljava/lang/Integer;

    .line 135
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->diverIds:Ljava/util/List;

    .line 136
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->type:Ljava/lang/Integer;

    .line 137
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 138
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 139
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lat:Ljava/lang/Double;

    .line 140
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lng:Ljava/lang/Double;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->checkRequiredFields()V

    .line 194
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;-><init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;

    move-result-object v0

    return-object v0
.end method

.method public channel(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "channel"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->channel:Ljava/lang/Integer;

    .line 155
    return-object p0
.end method

.method public diverIds(Ljava/util/List;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, diverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->diverIds:Ljava/util/List;

    .line 160
    return-object p0
.end method

.method public lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "lat"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lat:Ljava/lang/Double;

    .line 183
    return-object p0
.end method

.method public lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "lng"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lng:Ljava/lang/Double;

    .line 188
    return-object p0
.end method

.method public order_stat(Lcom/didi/frame/protobuffer/OrderStat;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "order_stat"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 178
    return-object p0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->phone_num:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->role:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 170
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->type:Ljava/lang/Integer;

    .line 165
    return-object p0
.end method
