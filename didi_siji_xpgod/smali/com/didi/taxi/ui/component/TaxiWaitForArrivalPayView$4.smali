.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 806
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, edit:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-static {v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$008(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I

    .line 808
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 810
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isLegal(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Ljava/lang/String;)Z

    move-result v2

    .line 811
    .local v2, flag:Z
    if-nez v2, :cond_0

    .line 812
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showEditError(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Ljava/lang/String;)V

    .line 840
    .end local v2           #flag:Z
    :goto_0
    return-void

    .line 817
    .restart local v2       #flag:Z
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 818
    .local v3, price:F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 819
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showEditError(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v3           #price:F
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 821
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #price:F
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I
    invoke-static {v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSaleDelayed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 830
    .end local v2           #flag:Z
    .end local v3           #price:F
    :cond_2
    new-instance v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;)V

    const-wide/16 v5, 0xc8

    invoke-static {v4, v5, v6}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 802
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 798
    return-void
.end method
