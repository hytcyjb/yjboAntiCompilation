.class Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$3;
.super Ljava/lang/Object;
.source "TaxiComplaintActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->doConfirm()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$200(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    .line 165
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
