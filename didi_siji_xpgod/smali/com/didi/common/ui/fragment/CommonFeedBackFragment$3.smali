.class Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;
.super Ljava/lang/Object;
.source "CommonFeedBackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonFeedBackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 191
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 192
    return-void
.end method
