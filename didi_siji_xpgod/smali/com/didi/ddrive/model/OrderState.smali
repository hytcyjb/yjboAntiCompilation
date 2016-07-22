.class public final enum Lcom/didi/ddrive/model/OrderState;
.super Ljava/lang/Enum;
.source "OrderState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/ddrive/model/OrderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/ddrive/model/OrderState;

.field public static final enum ACCEPT:Lcom/didi/ddrive/model/OrderState;

.field public static final enum ARRIVE:Lcom/didi/ddrive/model/OrderState;

.field public static final enum CANCEL:Lcom/didi/ddrive/model/OrderState;

.field public static final enum CLOSED:Lcom/didi/ddrive/model/OrderState;

.field public static final enum END_SERVICE:Lcom/didi/ddrive/model/OrderState;

.field public static final enum NEW:Lcom/didi/ddrive/model/OrderState;

.field public static final enum NONE:Lcom/didi/ddrive/model/OrderState;

.field public static final enum PAYED:Lcom/didi/ddrive/model/OrderState;

.field public static final enum START_SERVICE:Lcom/didi/ddrive/model/OrderState;

.field public static final enum SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

.field public static final enum TIMEOUT:Lcom/didi/ddrive/model/OrderState;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->NONE:Lcom/didi/ddrive/model/OrderState;

    .line 10
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    .line 12
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    .line 14
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    .line 16
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v7, v7}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    .line 18
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "ARRIVE"

    invoke-direct {v0, v1, v8, v8}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    .line 20
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "START_SERVICE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    .line 22
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "END_SERVICE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    .line 24
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "SUBMIT_CHARGE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    .line 26
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "PAYED"

    const/16 v2, 0x9

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    .line 28
    new-instance v0, Lcom/didi/ddrive/model/OrderState;

    const-string v1, "CLOSED"

    const/16 v2, 0xa

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/OrderState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/didi/ddrive/model/OrderState;

    const/4 v1, 0x0

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->NONE:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/ddrive/model/OrderState;->$VALUES:[Lcom/didi/ddrive/model/OrderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/didi/ddrive/model/OrderState;->code:I

    .line 32
    return-void
.end method

.method public static fromStateCode(I)Lcom/didi/ddrive/model/OrderState;
    .locals 5
    .parameter "code"

    .prologue
    .line 37
    invoke-static {}, Lcom/didi/ddrive/model/OrderState;->values()[Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    .local v0, arr$:[Lcom/didi/ddrive/model/OrderState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 38
    .local v3, state:Lcom/didi/ddrive/model/OrderState;
    iget v4, v3, Lcom/didi/ddrive/model/OrderState;->code:I

    if-ne v4, p0, :cond_0

    .line 42
    .end local v3           #state:Lcom/didi/ddrive/model/OrderState;
    :goto_1
    return-object v3

    .line 37
    .restart local v3       #state:Lcom/didi/ddrive/model/OrderState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3           #state:Lcom/didi/ddrive/model/OrderState;
    :cond_1
    sget-object v3, Lcom/didi/ddrive/model/OrderState;->NONE:Lcom/didi/ddrive/model/OrderState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/ddrive/model/OrderState;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/ddrive/model/OrderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/OrderState;

    return-object v0
.end method

.method public static values()[Lcom/didi/ddrive/model/OrderState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/ddrive/model/OrderState;->$VALUES:[Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0}, [Lcom/didi/ddrive/model/OrderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/ddrive/model/OrderState;

    return-object v0
.end method
