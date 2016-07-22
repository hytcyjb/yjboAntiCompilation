.class public final enum Lcom/didi/frame/protobuffer/LocationType;
.super Ljava/lang/Enum;
.source "LocationType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/LocationType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/LocationType;

.field public static final enum LOC_GPS:Lcom/didi/frame/protobuffer/LocationType;

.field public static final enum LOC_NET:Lcom/didi/frame/protobuffer/LocationType;

.field public static final enum LOC_OTHER:Lcom/didi/frame/protobuffer/LocationType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/LocationType;

    const-string v1, "LOC_GPS"

    invoke-direct {v0, v1, v4, v2}, Lcom/didi/frame/protobuffer/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/LocationType;->LOC_GPS:Lcom/didi/frame/protobuffer/LocationType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/LocationType;

    const-string v1, "LOC_NET"

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/LocationType;->LOC_NET:Lcom/didi/frame/protobuffer/LocationType;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/LocationType;

    const-string v1, "LOC_OTHER"

    invoke-direct {v0, v1, v3, v5}, Lcom/didi/frame/protobuffer/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/LocationType;->LOC_OTHER:Lcom/didi/frame/protobuffer/LocationType;

    .line 7
    new-array v0, v5, [Lcom/didi/frame/protobuffer/LocationType;

    sget-object v1, Lcom/didi/frame/protobuffer/LocationType;->LOC_GPS:Lcom/didi/frame/protobuffer/LocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/LocationType;->LOC_NET:Lcom/didi/frame/protobuffer/LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/LocationType;->LOC_OTHER:Lcom/didi/frame/protobuffer/LocationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/frame/protobuffer/LocationType;->$VALUES:[Lcom/didi/frame/protobuffer/LocationType;

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
    iput p3, p0, Lcom/didi/frame/protobuffer/LocationType;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/LocationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/LocationType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/LocationType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/LocationType;->$VALUES:[Lcom/didi/frame/protobuffer/LocationType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/LocationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/didi/frame/protobuffer/LocationType;->value:I

    return v0
.end method
