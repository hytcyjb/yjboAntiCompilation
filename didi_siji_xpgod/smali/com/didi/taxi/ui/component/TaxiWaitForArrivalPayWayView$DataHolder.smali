.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayWayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataHolder"
.end annotation


# instance fields
.field public mChannelId:I

.field public mInvalid:Z

.field public mPayWayActivityText:Landroid/widget/TextView;

.field public mPayWayCheckBox:Landroid/widget/CheckBox;

.field public mPayWayIcon:Landroid/widget/ImageView;

.field public mPayWayItem:Landroid/view/ViewGroup;

.field public mPayWayName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;-><init>()V

    return-void
.end method
