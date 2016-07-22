.class public final Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiTripInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiTripInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiTripInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public status:Ljava/lang/String;

.field public tripId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiTripInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 61
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->tripId:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->status:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiTripInfo;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiTripInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiTripInfo;-><init>(Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;Lcom/didi/frame/protobuffer/TaxiTripInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->build()Lcom/didi/frame/protobuffer/TaxiTripInfo;

    move-result-object v0

    return-object v0
.end method

.method public status(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->status:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public tripId(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;
    .locals 0
    .parameter "tripId"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->tripId:Ljava/lang/String;

    .line 68
    return-object p0
.end method
