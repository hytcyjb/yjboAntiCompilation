.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownFling()V
    .locals 3

    .prologue
    .line 327
    const-string v0, "onDownFling..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isCommentDriver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onOneTopClick()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onUpFling()V
    .locals 3

    .prologue
    .line 319
    const-string v0, "onUpFling..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isCommentDriver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method
