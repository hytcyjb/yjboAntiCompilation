.class public final Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderRealtimeCountReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;",
        ">;"
    }
.end annotation


# instance fields
.field public driving_track:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

.field public oid:Ljava/lang/String;

.field public timestamp:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 96
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->driving_track:Ljava/util/List;

    .line 98
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    .line 99
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->oid:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->timestamp:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->checkRequiredFields()V

    .line 138
    new-instance v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;-><init>(Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->build()Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    move-result-object v0

    return-object v0
.end method

.method public driving_track(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, driving_track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/LocationInfo;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->driving_track:Ljava/util/List;

    .line 108
    return-object p0
.end method

.method public fee_info(Lcom/didi/frame/protobuffer/DrivingFeeInfo;)Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
    .locals 0
    .parameter "fee_info"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    .line 116
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->oid:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 132
    return-object p0
.end method
