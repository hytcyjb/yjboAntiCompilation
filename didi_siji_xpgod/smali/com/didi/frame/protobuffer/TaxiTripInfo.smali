.class public final Lcom/didi/frame/protobuffer/TaxiTripInfo;
.super Lcom/squareup/wire/Message;
.source "TaxiTripInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiTripInfo$1;,
        Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATUS:Ljava/lang/String; = ""

.field public static final DEFAULT_TRIPID:Ljava/lang/String; = ""


# instance fields
.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tripId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 27
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->tripId:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;->status:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/TaxiTripInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiTripInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;Lcom/didi/frame/protobuffer/TaxiTripInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiTripInfo;-><init>(Lcom/didi/frame/protobuffer/TaxiTripInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tripId"
    .parameter "status"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p1, p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiTripInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiTripInfo;

    .line 36
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiTripInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTripInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTripInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->hashCode:I

    .line 43
    .local v0, result:I
    if-nez v0, :cond_1

    .line 44
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->tripId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 45
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 46
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiTripInfo;->hashCode:I

    .line 48
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 44
    goto :goto_0
.end method
