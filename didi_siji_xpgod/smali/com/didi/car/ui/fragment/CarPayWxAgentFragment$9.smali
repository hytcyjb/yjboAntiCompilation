.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;
.super Lcom/didi/common/net/ResponseListener;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelWxAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarWxAgentRelease;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarWxAgentRelease;)V
    .locals 11
    .parameter "baseObject"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 396
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 397
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 398
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentRelease;->getErrorCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 399
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 400
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, contents:[Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 402
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 403
    .local v1, content:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/ui/component/CarImageTextItemView;

    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v4, itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    invoke-virtual {v4}, Lcom/didi/car/ui/component/CarImageTextItemView;->setTextStyle()V

    .line 405
    const v6, 0x7f020274

    invoke-virtual {v4, v6, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 406
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 407
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    :cond_0
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v6, v10}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 410
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v7, Lcom/didi/common/ui/component/CommonDialog$IconType;->RIGHT:Lcom/didi/common/ui/component/CommonDialog$IconType;

    const v8, 0x7f0b05af

    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v9, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #contents:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :goto_1
    return-void

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentRelease;->getErrorCode()I

    move-result v6

    const/16 v7, 0x2969

    if-ne v6, v7, :cond_2

    .line 412
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v6, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 413
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v7, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentRelease;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v9, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentRelease;->getErrorCode()I

    move-result v6

    const/16 v7, 0x3fc

    if-ne v6, v7, :cond_3

    .line 415
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v6, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 416
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v7, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v8, p1, Lcom/didi/car/model/CarWxAgentRelease;->title:Ljava/lang/String;

    iget-object v9, p1, Lcom/didi/car/model/CarWxAgentRelease;->content:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_3
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v6, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 419
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v7, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    const v8, 0x7f0b05ae

    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v9, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    check-cast p1, Lcom/didi/car/model/CarWxAgentRelease;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$9;->onFinish(Lcom/didi/car/model/CarWxAgentRelease;)V

    return-void
.end method
