.class Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;
.super Ljava/lang/Object;
.source "DDriveCancelTripView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTemp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 315
    const-string v0, "morning"

    const-string v1, "afterTextChangedotherView.setOnClickListener is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->mTemp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->disableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$300(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 310
    const-string v0, "morning"

    const-string v1, "beforeTextChangedotherView.setOnClickListener is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;->mTemp:Ljava/lang/CharSequence;

    .line 303
    const-string v0, "morning"

    const-string v1, "onTextChangedotherView.setOnClickListener is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method
