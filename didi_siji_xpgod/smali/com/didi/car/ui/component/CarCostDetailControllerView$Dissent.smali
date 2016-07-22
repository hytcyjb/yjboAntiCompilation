.class final enum Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;
.super Ljava/lang/Enum;
.source "CarCostDetailControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarCostDetailControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Dissent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

.field public static final enum CONFIRM_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

.field public static final enum HANDLED_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

.field public static final enum HAS_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

.field public static final enum NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;


# instance fields
.field private mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    const-string v1, "NO_DISSENT"

    const v2, 0x7f0b02d5

    invoke-direct {v0, v1, v3, v2}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 51
    new-instance v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    const-string v1, "HAS_DISSENT"

    const v2, 0x7f0b02d6

    invoke-direct {v0, v1, v4, v2}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HAS_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 53
    new-instance v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    const-string v1, "CONFIRM_DISSENT"

    const v2, 0x7f0b02d7

    invoke-direct {v0, v1, v5, v2}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->CONFIRM_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 55
    new-instance v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    const-string v1, "HANDLED_DISSENT"

    invoke-direct {v0, v1, v6, v3}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HANDLED_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    sget-object v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HAS_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->CONFIRM_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HANDLED_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->$VALUES:[Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->mTextId:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    return-object v0
.end method

.method public static values()[Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->$VALUES:[Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    invoke-virtual {v0}, [Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    return-object v0
.end method


# virtual methods
.method public getTextId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->mTextId:I

    return v0
.end method

.method public next()Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$3;->$SwitchMap$com$didi$car$ui$component$CarCostDetailControllerView$Dissent:[I

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HAS_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->CONFIRM_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->HANDLED_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
