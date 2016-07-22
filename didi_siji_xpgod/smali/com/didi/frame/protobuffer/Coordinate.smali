.class public final Lcom/didi/frame/protobuffer/Coordinate;
.super Lcom/squareup/wire/Message;
.source "Coordinate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/Coordinate$1;,
        Lcom/didi/frame/protobuffer/Coordinate$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANGLE:Ljava/lang/Integer;

.field public static final DEFAULT_DX:Ljava/lang/Double;

.field public static final DEFAULT_DY:Ljava/lang/Double;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final DEFAULT_X:Ljava/lang/Double;

.field public static final DEFAULT_Y:Ljava/lang/Double;


# instance fields
.field public final angle:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dx:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dy:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final x:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final y:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    .line 21
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_DX:Ljava/lang/Double;

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_DY:Ljava/lang/Double;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_ANGLE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/Coordinate$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 68
    iget-object v1, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->x:Ljava/lang/Double;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->y:Ljava/lang/Double;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->timestamp:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dx:Ljava/lang/Double;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->dy:Ljava/lang/Double;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/Coordinate$Builder;->angle:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/protobuffer/Coordinate;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/Coordinate;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/Coordinate$Builder;Lcom/didi/frame/protobuffer/Coordinate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/Coordinate;-><init>(Lcom/didi/frame/protobuffer/Coordinate$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "type"
    .parameter "timestamp"
    .parameter "dx"
    .parameter "dy"
    .parameter "angle"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    .line 59
    iput-object p2, p0, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    .line 60
    iput-object p3, p0, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 61
    iput-object p4, p0, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    .line 62
    iput-object p5, p0, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    .line 63
    iput-object p6, p0, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    .line 64
    iput-object p7, p0, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/Coordinate;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/didi/frame/protobuffer/Coordinate;

    .line 77
    .local v0, o:Lcom/didi/frame/protobuffer/Coordinate;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Coordinate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 88
    iget v0, p0, Lcom/didi/frame/protobuffer/Coordinate;->hashCode:I

    .line 89
    .local v0, result:I
    if-nez v0, :cond_1

    .line 90
    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 91
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 92
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 93
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 94
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->dx:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 95
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Coordinate;->dy:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 96
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 97
    iput v0, p0, Lcom/didi/frame/protobuffer/Coordinate;->hashCode:I

    .line 99
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    :cond_3
    move v2, v1

    .line 91
    goto :goto_1

    :cond_4
    move v2, v1

    .line 92
    goto :goto_2

    :cond_5
    move v2, v1

    .line 93
    goto :goto_3

    :cond_6
    move v2, v1

    .line 94
    goto :goto_4

    :cond_7
    move v2, v1

    .line 95
    goto :goto_5
.end method
