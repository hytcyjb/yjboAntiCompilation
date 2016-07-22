.class public final Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderRealtimeFeeReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;",
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

.field public fee_bottom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeBottom;",
            ">;"
        }
    .end annotation
.end field

.field public fee_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public oid:Ljava/lang/String;

.field public timestamp:Ljava/lang/Integer;

.field public total_fee:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 118
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->driving_track:Ljava/util/List;

    .line 120
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_info:Ljava/util/List;

    .line 121
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->oid:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 123
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->total_fee:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_bottom:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;-><init>(Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->build()Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    move-result-object v0

    return-object v0
.end method

.method public driving_track(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, driving_track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/LocationInfo;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->driving_track:Ljava/util/List;

    .line 132
    return-object p0
.end method

.method public fee_bottom(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeBottom;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, fee_bottom:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeBottom;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_bottom:Ljava/util/List;

    .line 172
    return-object p0
.end method

.method public fee_info(Ljava/util/List;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;)",
            "Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, fee_info:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_info:Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 0
    .parameter "oid"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->oid:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->timestamp:Ljava/lang/Integer;

    .line 156
    return-object p0
.end method

.method public total_fee(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
    .locals 0
    .parameter "total_fee"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->total_fee:Ljava/lang/String;

    .line 164
    return-object p0
.end method
