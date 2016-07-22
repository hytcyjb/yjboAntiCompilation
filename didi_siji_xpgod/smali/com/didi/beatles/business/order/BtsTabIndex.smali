.class public final enum Lcom/didi/beatles/business/order/BtsTabIndex;
.super Ljava/lang/Enum;
.source "BtsTabIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/business/order/BtsTabIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/business/order/BtsTabIndex;

.field public static final enum MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

.field public static final enum NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

.field public static final enum PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

.field public static final enum TASK:Lcom/didi/beatles/business/order/BtsTabIndex;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    const-string v1, "PENGING_ORDER"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/beatles/business/order/BtsTabIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    new-instance v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    const-string v1, "MATCH_ORDER"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/beatles/business/order/BtsTabIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    new-instance v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    const-string v1, "NEARBY_ORDER"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/beatles/business/order/BtsTabIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    new-instance v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    const-string v1, "TASK"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/beatles/business/order/BtsTabIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->TASK:Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/beatles/business/order/BtsTabIndex;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->TASK:Lcom/didi/beatles/business/order/BtsTabIndex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->$VALUES:[Lcom/didi/beatles/business/order/BtsTabIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/didi/beatles/business/order/BtsTabIndex;->index:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/business/order/BtsTabIndex;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/business/order/BtsTabIndex;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/business/order/BtsTabIndex;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->$VALUES:[Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v0}, [Lcom/didi/beatles/business/order/BtsTabIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/business/order/BtsTabIndex;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/didi/beatles/business/order/BtsTabIndex;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/didi/beatles/business/order/BtsTabIndex;->index:I

    return v0
.end method
