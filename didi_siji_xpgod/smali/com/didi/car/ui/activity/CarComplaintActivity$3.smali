.class Lcom/didi/car/ui/activity/CarComplaintActivity$3;
.super Ljava/lang/Object;
.source "CarComplaintActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 138
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$3;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$3;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    #calls: Lcom/didi/car/ui/activity/CarComplaintActivity;->doConfirm()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$300(Lcom/didi/car/ui/activity/CarComplaintActivity;)V

    .line 156
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
