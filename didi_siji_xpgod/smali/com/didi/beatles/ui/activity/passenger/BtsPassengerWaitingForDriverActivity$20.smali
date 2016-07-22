.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initEditTagLayout()V
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
    .line 1785
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1789
    if-nez p3, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return v3

    .line 1791
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1809
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1810
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->actionDone()V
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    goto :goto_0

    .line 1793
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view= KEYCODE_DEL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1794
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1796
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1798
    .local v0, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v1, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_0

    .line 1799
    iget-object v1, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1800
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->doDelText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1802
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->doResetAddTagsStatus()V

    .line 1803
    iget-object v1, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
