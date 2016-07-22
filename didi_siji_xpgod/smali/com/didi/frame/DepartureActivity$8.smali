.class Lcom/didi/frame/DepartureActivity$8;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/DepartureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    add-int/lit8 v2, p3, 0x1

    #setter for: Lcom/didi/frame/DepartureActivity;->index:I
    invoke-static {v1, v2}, Lcom/didi/frame/DepartureActivity;->access$2202(Lcom/didi/frame/DepartureActivity;I)I

    .line 564
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2300(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 572
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2300(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 567
    .local v0, addr:Lcom/didi/common/model/Address;
    const-string v1, "sug"

    iput-object v1, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 568
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->upLoadAddressSug(Lcom/didi/common/model/Address;)V
    invoke-static {v1, v0}, Lcom/didi/frame/DepartureActivity;->access$2400(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)V

    .line 569
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->addTraceLog()V
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2500(Lcom/didi/frame/DepartureActivity;)V

    .line 570
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$8;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-virtual {v1, v0}, Lcom/didi/frame/DepartureActivity;->setDeparture(Lcom/didi/common/model/Address;)V

    .line 571
    const v1, 0x7f0b04ed

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    goto :goto_0
.end method
