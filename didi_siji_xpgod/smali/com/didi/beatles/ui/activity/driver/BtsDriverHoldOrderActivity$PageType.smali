.class final enum Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;
.super Ljava/lang/Enum;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

.field public static final enum PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

.field public static final enum PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

.field public static final enum PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

.field public static final enum PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2560
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    const-string v1, "PT_WAIT_ARRIVE"

    invoke-direct {v0, v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    const-string v1, "PT_WAIT_PAY"

    invoke-direct {v0, v1, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    const-string v1, "PT_EDIT_COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    const-string v1, "PT_ORDER_OVER"

    invoke-direct {v0, v1, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    .line 2559
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->$VALUES:[Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

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
    .line 2559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 2559
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;
    .locals 1

    .prologue
    .line 2559
    sget-object v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->$VALUES:[Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0}, [Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    return-object v0
.end method