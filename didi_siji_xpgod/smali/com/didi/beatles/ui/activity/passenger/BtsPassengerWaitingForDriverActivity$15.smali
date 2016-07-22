.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
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
    .line 1396
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1402
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->showSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagEditText isFocused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
