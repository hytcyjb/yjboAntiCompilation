.class Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;
.super Ljava/lang/Object;
.source "BusinessSwitchIntroHelper.java"

# interfaces
.implements Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getListener()Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    #getter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$100(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)Lcom/didi/car/model/CarFlag;

    move-result-object v0

    iget v0, v0, Lcom/didi/car/model/CarFlag;->guideTo:I

    if-ne v0, v2, :cond_0

    .line 143
    const-string v0, "ptxwfr02_ck"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    #calls: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->updateWaitFlag(I)V
    invoke-static {v0, v2}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$000(Lcom/didi/common/helper/BusinessSwitchIntroHelper;I)V

    .line 147
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v0, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$102(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;)Lcom/didi/car/model/CarFlag;

    .line 148
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    const/4 v1, 0x2

    #calls: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->updateWaitFlag(I)V
    invoke-static {v0, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$000(Lcom/didi/common/helper/BusinessSwitchIntroHelper;I)V

    .line 116
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForResponseFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    #getter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$100(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)Lcom/didi/car/model/CarFlag;

    move-result-object v0

    iget v0, v0, Lcom/didi/car/model/CarFlag;->guideTo:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    .line 123
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchToByBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "ptxwfr03_ck"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    iget-object v1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    #getter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$100(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)Lcom/didi/car/model/CarFlag;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    #calls: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setUpCarPopuDialog(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$200(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    iget-object v1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    #getter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$100(Lcom/didi/common/helper/BusinessSwitchIntroHelper;)Lcom/didi/car/model/CarFlag;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    #calls: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setUpCarPopuDialog(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$200(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$1;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/helper/BusinessSwitchIntroHelper;->flag:Lcom/didi/car/model/CarFlag;
    invoke-static {v0, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->access$102(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/car/model/CarFlag;)Lcom/didi/car/model/CarFlag;

    .line 138
    return-void
.end method
