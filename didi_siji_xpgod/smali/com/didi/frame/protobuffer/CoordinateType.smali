.class public final enum Lcom/didi/frame/protobuffer/CoordinateType;
.super Ljava/lang/Enum;
.source "CoordinateType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/CoordinateType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final enum BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final enum GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final enum WGS_84:Lcom/didi/frame/protobuffer/CoordinateType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/CoordinateType;

    const-string v1, "BD_09"

    invoke-direct {v0, v1, v5, v3}, Lcom/didi/frame/protobuffer/CoordinateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/CoordinateType;

    const-string v1, "GCJ_02"

    invoke-direct {v0, v1, v3, v4}, Lcom/didi/frame/protobuffer/CoordinateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/CoordinateType;

    const-string v1, "WGS_84"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/didi/frame/protobuffer/CoordinateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->WGS_84:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/protobuffer/CoordinateType;

    sget-object v1, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/CoordinateType;->WGS_84:Lcom/didi/frame/protobuffer/CoordinateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->$VALUES:[Lcom/didi/frame/protobuffer/CoordinateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/didi/frame/protobuffer/CoordinateType;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CoordinateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/CoordinateType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/CoordinateType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->$VALUES:[Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/CoordinateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/CoordinateType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/didi/frame/protobuffer/CoordinateType;->value:I

    return v0
.end method
