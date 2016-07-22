.class public final enum Lcom/didi/frame/protobuffer/OrderStat;
.super Ljava/lang/Enum;
.source "OrderStat.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/OrderStat;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/OrderStat;

.field public static final enum HomePage:Lcom/didi/frame/protobuffer/OrderStat;

.field public static final enum OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

.field public static final enum SendOrder:Lcom/didi/frame/protobuffer/OrderStat;

.field public static final enum WaitPick:Lcom/didi/frame/protobuffer/OrderStat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/OrderStat;

    const-string v1, "HomePage"

    invoke-direct {v0, v1, v5, v2}, Lcom/didi/frame/protobuffer/OrderStat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/OrderStat;

    const-string v1, "SendOrder"

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/OrderStat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OrderStat;->SendOrder:Lcom/didi/frame/protobuffer/OrderStat;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/OrderStat;

    const-string v1, "WaitPick"

    invoke-direct {v0, v1, v3, v4}, Lcom/didi/frame/protobuffer/OrderStat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OrderStat;->WaitPick:Lcom/didi/frame/protobuffer/OrderStat;

    .line 24
    new-instance v0, Lcom/didi/frame/protobuffer/OrderStat;

    const-string v1, "OnTrip"

    invoke-direct {v0, v1, v4, v6}, Lcom/didi/frame/protobuffer/OrderStat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    .line 7
    new-array v0, v6, [Lcom/didi/frame/protobuffer/OrderStat;

    sget-object v1, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/OrderStat;->SendOrder:Lcom/didi/frame/protobuffer/OrderStat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/OrderStat;->WaitPick:Lcom/didi/frame/protobuffer/OrderStat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/protobuffer/OrderStat;->$VALUES:[Lcom/didi/frame/protobuffer/OrderStat;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/didi/frame/protobuffer/OrderStat;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OrderStat;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/OrderStat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/OrderStat;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/OrderStat;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/OrderStat;->$VALUES:[Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/OrderStat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/OrderStat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderStat;->value:I

    return v0
.end method
