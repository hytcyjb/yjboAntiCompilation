.class Lcom/didi/car/ui/activity/CarComplaintedActivity$1;
.super Ljava/lang/Object;
.source "CarComplaintedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarComplaintedActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarComplaintedActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarComplaintedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarComplaintedActivity$1;->this$0:Lcom/didi/car/ui/activity/CarComplaintedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintedActivity$1;->this$0:Lcom/didi/car/ui/activity/CarComplaintedActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->onBackPressed()V

    .line 49
    return-void
.end method
