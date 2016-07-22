.class public final enum Lcom/didi/ddrive/model/PayState;
.super Ljava/lang/Enum;
.source "PayState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/ddrive/model/PayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/ddrive/model/PayState;

.field public static final enum CLOSED:Lcom/didi/ddrive/model/PayState;

.field public static final enum NONE:Lcom/didi/ddrive/model/PayState;

.field public static final enum NoFee:Lcom/didi/ddrive/model/PayState;

.field public static final enum Payed:Lcom/didi/ddrive/model/PayState;

.field public static final enum PendingPay:Lcom/didi/ddrive/model/PayState;

.field public static final enum PendingRefund:Lcom/didi/ddrive/model/PayState;

.field public static final enum Refunded:Lcom/didi/ddrive/model/PayState;

.field public static final enum UnPayed:Lcom/didi/ddrive/model/PayState;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    .line 10
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "NoFee"

    invoke-direct {v0, v1, v5, v4}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->NoFee:Lcom/didi/ddrive/model/PayState;

    .line 11
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "UnPayed"

    invoke-direct {v0, v1, v6, v5}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    .line 12
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "Payed"

    invoke-direct {v0, v1, v7, v6}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    .line 13
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v8, v7}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    .line 14
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "PendingPay"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->PendingPay:Lcom/didi/ddrive/model/PayState;

    .line 15
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "PendingRefund"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->PendingRefund:Lcom/didi/ddrive/model/PayState;

    .line 16
    new-instance v0, Lcom/didi/ddrive/model/PayState;

    const-string v1, "Refunded"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/ddrive/model/PayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/ddrive/model/PayState;->Refunded:Lcom/didi/ddrive/model/PayState;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/didi/ddrive/model/PayState;

    sget-object v1, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/ddrive/model/PayState;->NoFee:Lcom/didi/ddrive/model/PayState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/ddrive/model/PayState;->PendingPay:Lcom/didi/ddrive/model/PayState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/ddrive/model/PayState;->PendingRefund:Lcom/didi/ddrive/model/PayState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/ddrive/model/PayState;->Refunded:Lcom/didi/ddrive/model/PayState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/ddrive/model/PayState;->$VALUES:[Lcom/didi/ddrive/model/PayState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/didi/ddrive/model/PayState;->code:I

    .line 20
    return-void
.end method

.method public static fromStateCode(I)Lcom/didi/ddrive/model/PayState;
    .locals 5
    .parameter "code"

    .prologue
    .line 25
    invoke-static {}, Lcom/didi/ddrive/model/PayState;->values()[Lcom/didi/ddrive/model/PayState;

    move-result-object v0

    .local v0, arr$:[Lcom/didi/ddrive/model/PayState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 26
    .local v3, state:Lcom/didi/ddrive/model/PayState;
    iget v4, v3, Lcom/didi/ddrive/model/PayState;->code:I

    if-ne v4, p0, :cond_0

    .line 30
    .end local v3           #state:Lcom/didi/ddrive/model/PayState;
    :goto_1
    return-object v3

    .line 25
    .restart local v3       #state:Lcom/didi/ddrive/model/PayState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v3           #state:Lcom/didi/ddrive/model/PayState;
    :cond_1
    sget-object v3, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/ddrive/model/PayState;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/ddrive/model/PayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/PayState;

    return-object v0
.end method

.method public static values()[Lcom/didi/ddrive/model/PayState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/ddrive/model/PayState;->$VALUES:[Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v0}, [Lcom/didi/ddrive/model/PayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/ddrive/model/PayState;

    return-object v0
.end method
