.class public final Lcom/didi/frame/protobuffer/DriverLocationInfo;
.super Lcom/squareup/wire/Message;
.source "DriverLocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DriverLocationInfo$1;,
        Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_COORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DIRVERID:Ljava/lang/Long;

.field public static final DEFAULT_STATUS:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final coords:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/Coordinate;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field public final dirverId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_DIRVERID:Ljava/lang/Long;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_COORDS:Ljava/util/List;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_STATUS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 48
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->dirverId:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->coords:Ljava/util/List;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;->status:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DriverLocationInfo;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;Lcom/didi/frame/protobuffer/DriverLocationInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DriverLocationInfo;-><init>(Lcom/didi/frame/protobuffer/DriverLocationInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .parameter "dirverId"
    .parameter "type"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Coordinate;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, coords:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    .line 42
    iput-object p2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    .line 43
    invoke-static {p3}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DriverLocationInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;

    .line 57
    .local v0, o:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverLocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 65
    iget v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->hashCode:I

    .line 66
    .local v0, result:I
    if-nez v0, :cond_1

    .line 67
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 68
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 69
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 70
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 71
    iput v0, p0, Lcom/didi/frame/protobuffer/DriverLocationInfo;->hashCode:I

    .line 73
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    :cond_3
    move v2, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method
