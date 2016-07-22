.class public final Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiDriverShareTripLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;",
        ">;"
    }
.end annotation


# instance fields
.field public common_trip_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public common_trip_total:Ljava/lang/Integer;

.field public order_id:Ljava/lang/String;

.field public other_fee:Ljava/lang/Integer;

.field public self_trip_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public self_trip_total:Ljava/lang/Integer;

.field public tip:Ljava/lang/Integer;

.field public trip_total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 138
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->order_id:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->trip_total:Ljava/lang/Integer;

    .line 141
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_total:Ljava/lang/Integer;

    .line 142
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_items:Ljava/util/List;

    .line 143
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_total:Ljava/lang/Integer;

    .line 144
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_items:Ljava/util/List;

    .line 145
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->tip:Ljava/lang/Integer;

    .line 146
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->other_fee:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->checkRequiredFields()V

    .line 216
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    move-result-object v0

    return-object v0
.end method

.method public common_trip_items(Ljava/util/List;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;)",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, common_trip_items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_items:Ljava/util/List;

    .line 194
    return-object p0
.end method

.method public common_trip_total(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "common_trip_total"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_total:Ljava/lang/Integer;

    .line 186
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->order_id:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public other_fee(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "other_fee"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->other_fee:Ljava/lang/Integer;

    .line 210
    return-object p0
.end method

.method public self_trip_items(Ljava/util/List;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;)",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, self_trip_items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_items:Ljava/util/List;

    .line 178
    return-object p0
.end method

.method public self_trip_total(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "self_trip_total"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_total:Ljava/lang/Integer;

    .line 170
    return-object p0
.end method

.method public tip(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "tip"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->tip:Ljava/lang/Integer;

    .line 202
    return-object p0
.end method

.method public trip_total(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    .locals 0
    .parameter "trip_total"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->trip_total:Ljava/lang/Integer;

    .line 162
    return-object p0
.end method
