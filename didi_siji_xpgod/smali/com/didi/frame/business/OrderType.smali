.class public final enum Lcom/didi/frame/business/OrderType;
.super Ljava/lang/Enum;
.source "OrderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/business/OrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/business/OrderType;

.field public static final enum Booking:Lcom/didi/frame/business/OrderType;

.field public static final enum Realtime:Lcom/didi/frame/business/OrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/didi/frame/business/OrderType;

    const-string v1, "Realtime"

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/business/OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    new-instance v0, Lcom/didi/frame/business/OrderType;

    const-string v1, "Booking"

    invoke-direct {v0, v1, v3}, Lcom/didi/frame/business/OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/frame/business/OrderType;->$VALUES:[Lcom/didi/frame/business/OrderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/business/OrderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/didi/frame/business/OrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/OrderType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/didi/frame/business/OrderType;->$VALUES:[Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0}, [Lcom/didi/frame/business/OrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/business/OrderType;

    return-object v0
.end method


# virtual methods
.method public getIndex(Lcom/didi/frame/business/OrderType;)I
    .locals 3
    .parameter "t"

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, i:I
    invoke-static {}, Lcom/didi/frame/business/OrderType;->values()[Lcom/didi/frame/business/OrderType;

    move-result-object v1

    .line 19
    .local v1, typeArray:[Lcom/didi/frame/business/OrderType;
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 20
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 23
    :cond_0
    return v0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p0}, Lcom/didi/frame/business/OrderType;->getIndex(Lcom/didi/frame/business/OrderType;)I

    move-result v0

    return v0
.end method
