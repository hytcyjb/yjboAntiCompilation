.class Lcom/didi/car/ui/activity/CarCouponsListActivity$1;
.super Ljava/lang/Object;
.source "CarCouponsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCouponsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$1;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCouponsListActivity$1;->this$0:Lcom/didi/car/ui/activity/CarCouponsListActivity;

    #calls: Lcom/didi/car/ui/activity/CarCouponsListActivity;->back()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCouponsListActivity;->access$000(Lcom/didi/car/ui/activity/CarCouponsListActivity;)V

    .line 157
    return-void
.end method
