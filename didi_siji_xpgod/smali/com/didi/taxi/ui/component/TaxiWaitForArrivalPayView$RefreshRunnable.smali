.class abstract Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RefreshRunnable"
.end annotation


# instance fields
.field protected oprationCount:I

.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method private constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    return-void
.end method


# virtual methods
.method public operate(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 908
    iput p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;->oprationCount:I

    .line 909
    return-void
.end method
