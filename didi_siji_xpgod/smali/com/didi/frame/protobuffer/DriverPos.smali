.class public final Lcom/didi/frame/protobuffer/DriverPos;
.super Lcom/squareup/wire/Message;
.source "DriverPos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DriverPos$1;,
        Lcom/didi/frame/protobuffer/DriverPos$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ARRIVED_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_DISTANCE:Ljava/lang/Float;

.field public static final DEFAULT_DISTANCE_ENABLED:Ljava/lang/Integer;


# instance fields
.field public final arrived_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final distance_enabled:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pos:Lcom/didi/frame/protobuffer/Coordinate;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_ARRIVED_TIME:Ljava/lang/Integer;

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_DISTANCE:Ljava/lang/Float;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_DISTANCE_ENABLED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Coordinate;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0
    .parameter "pos"
    .parameter "arrived_time"
    .parameter "distance"
    .parameter "distance_enabled"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    .line 31
    iput-object p2, p0, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    .line 32
    iput-object p3, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    .line 33
    iput-object p4, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DriverPos$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 37
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverPos$Builder;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/DriverPos$Builder;->arrived_time:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance:Ljava/lang/Float;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/DriverPos$Builder;->distance_enabled:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DriverPos;-><init>(Lcom/didi/frame/protobuffer/Coordinate;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/DriverPos;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DriverPos$Builder;Lcom/didi/frame/protobuffer/DriverPos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DriverPos;-><init>(Lcom/didi/frame/protobuffer/DriverPos$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DriverPos;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/didi/frame/protobuffer/DriverPos;

    .line 46
    .local v0, o:Lcom/didi/frame/protobuffer/DriverPos;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverPos;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverPos;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverPos;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverPos;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 54
    iget v0, p0, Lcom/didi/frame/protobuffer/DriverPos;->hashCode:I

    .line 55
    .local v0, result:I
    if-nez v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/Coordinate;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 58
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 59
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 60
    iput v0, p0, Lcom/didi/frame/protobuffer/DriverPos;->hashCode:I

    .line 62
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    :cond_3
    move v2, v1

    .line 57
    goto :goto_1

    :cond_4
    move v2, v1

    .line 58
    goto :goto_2
.end method
