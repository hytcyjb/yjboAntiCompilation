.class Lcom/didi/car/ui/component/CarCancelTripView$4;
.super Ljava/lang/Object;
.source "CarCancelTripView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTemp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/didi/car/ui/component/CarCancelTripView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarCancelTripView;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->mTemp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$800(Lcom/didi/car/ui/component/CarCancelTripView;)V

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->disableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$700(Lcom/didi/car/ui/component/CarCancelTripView;)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$800(Lcom/didi/car/ui/component/CarCancelTripView;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 314
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$4;->mTemp:Ljava/lang/CharSequence;

    .line 308
    return-void
.end method
