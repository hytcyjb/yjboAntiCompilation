.class Lcom/didi/frame/DepartureActivity$9$1;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity$9;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/DepartureActivity$9;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$9$1;->this$1:Lcom/didi/frame/DepartureActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addrGet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$9$1;->this$1:Lcom/didi/frame/DepartureActivity$9;

    iget-object v1, v1, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$9$1;->this$1:Lcom/didi/frame/DepartureActivity$9;

    iget-object v0, v0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$9$1;->this$1:Lcom/didi/frame/DepartureActivity$9;

    iget-object v1, v1, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/DepartureActivity;->setDeparture(Lcom/didi/common/model/Address;)V

    .line 600
    return-void
.end method
