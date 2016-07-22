.class Lcom/didi/car/ui/activity/CarComplaintActivity$2;
.super Ljava/lang/Object;
.source "CarComplaintActivity.java"

# interfaces
.implements Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarComplaintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    #getter for: Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$100(Lcom/didi/car/ui/activity/CarComplaintActivity;)Lcom/didi/frame/complaint/CarComplaintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/complaint/CarComplaintView;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$002(Lcom/didi/car/ui/activity/CarComplaintActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    #calls: Lcom/didi/car/ui/activity/CarComplaintActivity;->showReConfirmDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$200(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    .line 123
    return-void
.end method

.method public onReasonCheck()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$2;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    #getter for: Lcom/didi/car/ui/activity/CarComplaintActivity;->carComplaintView:Lcom/didi/frame/complaint/CarComplaintView;
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$100(Lcom/didi/car/ui/activity/CarComplaintActivity;)Lcom/didi/frame/complaint/CarComplaintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/complaint/CarComplaintView;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarComplaintActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$002(Lcom/didi/car/ui/activity/CarComplaintActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    return-void
.end method
