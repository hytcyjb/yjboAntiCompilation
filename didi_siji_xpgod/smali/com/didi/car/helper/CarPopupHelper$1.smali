.class Lcom/didi/car/helper/CarPopupHelper$1;
.super Ljava/lang/Object;
.source "CarPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/helper/CarPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/helper/CarPopupHelper;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 115
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$000(Lcom/didi/car/helper/CarPopupHelper;)Lcom/didi/car/listener/DynamicUpdatePriceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$000(Lcom/didi/car/helper/CarPopupHelper;)Lcom/didi/car/listener/DynamicUpdatePriceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/listener/DynamicUpdatePriceListener;->confirmCall()V

    .line 118
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 119
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic02_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->checked:Z
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$100(Lcom/didi/car/helper/CarPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic04_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic02_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->checked:Z
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$100(Lcom/didi/car/helper/CarPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic04_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 132
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$000(Lcom/didi/car/helper/CarPopupHelper;)Lcom/didi/car/listener/DynamicUpdatePriceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$000(Lcom/didi/car/helper/CarPopupHelper;)Lcom/didi/car/listener/DynamicUpdatePriceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/listener/DynamicUpdatePriceListener;->cancelCall()V

    .line 135
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_4

    .line 136
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic03_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->checked:Z
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$100(Lcom/didi/car/helper/CarPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic04_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic03_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper$1;->this$0:Lcom/didi/car/helper/CarPopupHelper;

    #getter for: Lcom/didi/car/helper/CarPopupHelper;->checked:Z
    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->access$100(Lcom/didi/car/helper/CarPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    const-string v1, "pgxwfrdynamic04_ck"

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f0801d8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
