.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$6;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onMessageReceived(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "recommendType"
    .parameter "recommendMessage"
    .parameter "args"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 295
    :pswitch_1
    sput-object p2, Lcom/didi/car/helper/CarPushHelper;->HIT_MESSAGE:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_2
    invoke-static {p2}, Lcom/didi/car/helper/CarPushHelper;->getCommonMessageForFirstGrabOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_3
    new-instance v0, Lcom/didi/car/model/CarServiceMessage;

    invoke-direct {v0}, Lcom/didi/car/model/CarServiceMessage;-><init>()V

    .line 304
    .local v0, message:Lcom/didi/car/model/CarServiceMessage;
    iput-object p2, v0, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V

    .line 306
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isAppFront(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    const-string v1, "(\\u007B)"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\\u007D)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 308
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0228

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-static {v1, p2, v2}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 315
    .end local v0           #message:Lcom/didi/car/model/CarServiceMessage;
    :pswitch_4
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/didi/car/business/CarOrderLooper;->updateCarEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
