.class public final Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GulfstreamPassengerDriverLocReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;",
        ">;"
    }
.end annotation


# instance fields
.field public eta:Ljava/lang/Integer;

.field public eta_distance:Ljava/lang/Integer;

.field public eta_str:Ljava/lang/String;

.field public loc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 87
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->loc:Ljava/util/List;

    .line 89
    iget-object v0, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta:Ljava/lang/Integer;

    .line 90
    iget-object v0, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_distance:Ljava/lang/Integer;

    .line 91
    iget-object v0, p1, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_str:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;-><init>(Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->build()Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    move-result-object v0

    return-object v0
.end method

.method public eta(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
    .locals 0
    .parameter "eta"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta:Ljava/lang/Integer;

    .line 104
    return-object p0
.end method

.method public eta_distance(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
    .locals 0
    .parameter "eta_distance"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_distance:Ljava/lang/Integer;

    .line 109
    return-object p0
.end method

.method public eta_str(Ljava/lang/String;)Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
    .locals 0
    .parameter "eta_str"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->eta_str:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public loc(Ljava/util/List;)Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
            ">;)",
            "Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, loc:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/DriverLocationInfo;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq$Builder;->loc:Ljava/util/List;

    .line 96
    return-object p0
.end method
