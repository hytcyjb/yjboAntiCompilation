.class Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonFeedBackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 169
    const v0, 0x7f0b0526

    invoke-virtual {p1, v0}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 170
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v0, 0x7f0b0527

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 174
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2$1;->this$1:Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    goto :goto_0
.end method
