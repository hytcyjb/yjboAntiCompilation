.class final enum Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;
.super Ljava/lang/Enum;
.source "TaxiWaitForArrivalControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

.field public static final enum OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

.field public static final enum OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

.field public static final enum OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

.field public static final enum OP_PAY:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    const-string v1, "OP_NONE"

    invoke-direct {v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    const-string v1, "OP_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    const-string v1, "OP_PAY"

    invoke-direct {v0, v1, v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_PAY:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    const-string v1, "OP_ARRIVAL"

    invoke-direct {v0, v1, v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    sget-object v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_PAY:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->$VALUES:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    return-object v0
.end method

.method public static values()[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->$VALUES:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-virtual {v0}, [Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    return-object v0
.end method
