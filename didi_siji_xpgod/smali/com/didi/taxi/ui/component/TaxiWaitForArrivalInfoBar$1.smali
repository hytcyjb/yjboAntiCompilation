.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalInfoBar.java"

# interfaces
.implements Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 97
    return-void
.end method
