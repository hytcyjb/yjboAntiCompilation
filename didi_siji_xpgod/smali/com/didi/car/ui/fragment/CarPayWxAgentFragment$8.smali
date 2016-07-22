.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;
.super Lcom/didi/common/net/ResponseListener;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarWxAgentStatus;",
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
    .line 300
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarWxAgentStatus;)V
    .locals 11
    .parameter "params"

    .prologue
    const v8, 0x7f020274

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 304
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 306
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentStatus;->getErrorCode()I

    move-result v6

    if-nez v6, :cond_4

    .line 307
    iget v6, p1, Lcom/didi/car/model/CarWxAgentStatus;->status:I

    if-ne v6, v7, :cond_2

    .line 308
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 309
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelPayResultCheckAlarm()V
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 310
    iget-object v6, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentNotice:Ljava/lang/String;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, contents:[Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 313
    .local v1, content:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/ui/component/CarImageTextItemView;

    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v4, itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    invoke-virtual {v4}, Lcom/didi/car/ui/component/CarImageTextItemView;->setTextStyle()V

    .line 315
    invoke-virtual {v4, v8, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 316
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 317
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    :cond_0
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mAgreeLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 321
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v7, Lcom/didi/common/ui/component/CommonDialog$IconType;->RIGHT:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v8, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerTitle:Ljava/lang/String;

    iget-object v9, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerContent:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "car_wxagent_set_bind_ok"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 345
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #contents:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 324
    :cond_2
    iget v6, p1, Lcom/didi/car/model/CarWxAgentStatus;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 325
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 326
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelPayResultCheckAlarm()V
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 327
    iget-object v6, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentBindNotice:Ljava/lang/String;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2       #contents:[Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    move-object v0, v2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 330
    .restart local v1       #content:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/ui/component/CarImageTextItemView;

    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v4       #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    invoke-virtual {v4}, Lcom/didi/car/ui/component/CarImageTextItemView;->setTextStyle()V

    .line 332
    invoke-virtual {v4, v8, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 333
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 334
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    :cond_3
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 337
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iget-object v7, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerTitle:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerContent:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentFaild(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #contents:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_4
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    check-cast p1, Lcom/didi/car/model/CarWxAgentStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$8;->onFinish(Lcom/didi/car/model/CarWxAgentStatus;)V

    return-void
.end method
