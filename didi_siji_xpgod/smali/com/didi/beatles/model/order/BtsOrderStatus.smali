.class public final enum Lcom/didi/beatles/model/order/BtsOrderStatus;
.super Ljava/lang/Enum;
.source "BtsOrderStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_CANCELED_BEFORE_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_CANCELED_DURING_TRIP:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_CLOSED_BY_CUSTOM_SERVICE:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_COMPLETED:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_STRIVED:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_COMMENT:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_PAY:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_PAY_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_STRIVE_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_TRIP_COMPLETE:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_TRIP_FIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_TRIP_HALF:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WAIT_FOR_TRIP_START:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public static final enum STATUS_WATING_ORDER_UNKNOWN:Lcom/didi/beatles/model/order/BtsOrderStatus;


# instance fields
.field private status:I

.field private subStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WATING_ORDER_UNKNOWN"

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WATING_ORDER_UNKNOWN:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 9
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_STRIVE"

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 13
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_STRIVE_TIMEOUT"

    invoke-direct {v0, v1, v6, v4, v5}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_STRIVE_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 17
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_STRIVED"

    invoke-direct {v0, v1, v8, v4, v6}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_STRIVED:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 21
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_TRIP_START"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_START:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 24
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_TRIP_FIVE"

    invoke-direct {v0, v1, v7, v5, v5}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_FIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 27
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_TRIP_HALF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_HALF:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 31
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_TRIP_COMPLETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_COMPLETE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 35
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_PAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_PAY:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 39
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_PAY_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_PAY_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 43
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_WAIT_FOR_COMMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v8, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_COMMENT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 47
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_COMPLETED"

    const/16 v2, 0xb

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_COMPLETED:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 51
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_CANCELED_BEFORE_STRIVE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CANCELED_BEFORE_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 55
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_CANCELED_DURING_TRIP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CANCELED_DURING_TRIP:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 59
    new-instance v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    const-string v1, "STATUS_CLOSED_BY_CUSTOM_SERVICE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/didi/beatles/model/order/BtsOrderStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CLOSED_BY_CUSTOM_SERVICE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 3
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/didi/beatles/model/order/BtsOrderStatus;

    sget-object v1, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WATING_ORDER_UNKNOWN:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_STRIVE_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_STRIVED:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_START:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_FIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_HALF:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_TRIP_COMPLETE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_PAY:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_PAY_TIMEOUT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WAIT_FOR_COMMENT:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_COMPLETED:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CANCELED_BEFORE_STRIVE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CANCELED_DURING_TRIP:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_CLOSED_BY_CUSTOM_SERVICE:Lcom/didi/beatles/model/order/BtsOrderStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->$VALUES:[Lcom/didi/beatles/model/order/BtsOrderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter
    .parameter "status"
    .parameter "subStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput v0, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->status:I

    .line 62
    iput v0, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->subStatus:I

    .line 65
    iput p3, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->status:I

    .line 66
    iput p4, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->subStatus:I

    .line 67
    return-void
.end method

.method public static mapToTypeByInt(II)Lcom/didi/beatles/model/order/BtsOrderStatus;
    .locals 5
    .parameter "status"
    .parameter "subStatus"

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/beatles/model/order/BtsOrderStatus;->values()[Lcom/didi/beatles/model/order/BtsOrderStatus;

    move-result-object v0

    .local v0, arr$:[Lcom/didi/beatles/model/order/BtsOrderStatus;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 80
    .local v3, value:Lcom/didi/beatles/model/order/BtsOrderStatus;
    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getStatus()I

    move-result v4

    if-ne v4, p0, :cond_0

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getSubStatus()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 85
    .end local v3           #value:Lcom/didi/beatles/model/order/BtsOrderStatus;
    :goto_1
    return-object v3

    .line 79
    .restart local v3       #value:Lcom/didi/beatles/model/order/BtsOrderStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v3           #value:Lcom/didi/beatles/model/order/BtsOrderStatus;
    :cond_1
    sget-object v3, Lcom/didi/beatles/model/order/BtsOrderStatus;->STATUS_WATING_ORDER_UNKNOWN:Lcom/didi/beatles/model/order/BtsOrderStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/model/order/BtsOrderStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderStatus;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/model/order/BtsOrderStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/didi/beatles/model/order/BtsOrderStatus;->$VALUES:[Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v0}, [Lcom/didi/beatles/model/order/BtsOrderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/model/order/BtsOrderStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->status:I

    return v0
.end method

.method public getSubStatus()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/didi/beatles/model/order/BtsOrderStatus;->subStatus:I

    return v0
.end method
