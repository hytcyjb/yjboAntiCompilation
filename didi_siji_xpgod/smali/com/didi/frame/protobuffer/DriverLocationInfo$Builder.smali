.class public final Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DriverLocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DriverLocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DriverLocationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public coords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field public dirverId:Ljava/lang/Long;

.field public status:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DriverLocationInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 88
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->dirverId:Ljava/lang/Long;

    .line 90
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->type:Ljava/lang/Integer;

    .line 91
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/DriverLocationInfo;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->coords:Ljava/util/List;

    .line 92
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->status:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/DriverLocationInfo;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->checkRequiredFields()V

    .line 121
    new-instance v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DriverLocationInfo;-><init>(Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;Lcom/didi/frame/protobuffer/DriverLocationInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->build()Lcom/didi/frame/protobuffer/DriverLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public coords(Ljava/util/List;)Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Coordinate;",
            ">;)",
            "Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, coords:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->coords:Ljava/util/List;

    .line 107
    return-object p0
.end method

.method public dirverId(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
    .locals 0
    .parameter "dirverId"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->dirverId:Ljava/lang/Long;

    .line 97
    return-object p0
.end method

.method public status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->status:Ljava/lang/Integer;

    .line 115
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->type:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method
