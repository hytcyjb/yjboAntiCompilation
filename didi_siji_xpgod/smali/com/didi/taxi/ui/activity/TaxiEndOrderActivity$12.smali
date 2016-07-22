.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$12;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$12;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$12;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$1000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    .line 532
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
