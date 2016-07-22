.class public final Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiPassengerPaySuccReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public order_id:Ljava/lang/String;

.field public total:Ljava/lang/Float;

.field public trip_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 105
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->order_id:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->content:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->total:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->total:Ljava/lang/Float;

    .line 109
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->detail:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->detail:Ljava/util/List;

    .line 110
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;->trip_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->trip_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->checkRequiredFields()V

    .line 156
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;-><init>(Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq;

    move-result-object v0

    return-object v0
.end method

.method public content(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->content:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public detail(Ljava/util/List;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;",
            ">;)",
            "Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, detail:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Item;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->detail:Ljava/util/List;

    .line 142
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->order_id:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public total(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    .locals 0
    .parameter "total"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->total:Ljava/lang/Float;

    .line 134
    return-object p0
.end method

.method public trip_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;
    .locals 0
    .parameter "trip_id"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiPassengerPaySuccReq$Builder;->trip_id:Ljava/lang/String;

    .line 150
    return-object p0
.end method
