.class Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;
.super Ljava/lang/Object;
.source "BtsPullOrderSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$000(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$100(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #calls: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->getResponseListener()Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$200(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->loadRoleSetting(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 136
    :cond_0
    return-void
.end method
