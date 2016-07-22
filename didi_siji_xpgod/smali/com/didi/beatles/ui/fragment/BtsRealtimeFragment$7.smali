.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setOnClickListener(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iput-object p2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 522
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 529
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;->val$url:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 532
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
