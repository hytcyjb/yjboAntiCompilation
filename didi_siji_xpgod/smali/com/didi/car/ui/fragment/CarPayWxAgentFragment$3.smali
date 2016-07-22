.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;
.super Lcom/didi/common/net/ResponseListener;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getWxAgentStatus()V
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
    .line 148
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarWxAgentStatus;)V
    .locals 9
    .parameter "carWxAgentStatus"

    .prologue
    const/4 v6, 0x1

    .line 152
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 153
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 155
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentStatus;->getErrorCode()I

    move-result v7

    if-nez v7, :cond_3

    .line 156
    iget v7, p1, Lcom/didi/car/model/CarWxAgentStatus;->bindStatus:I

    if-ne v7, v6, :cond_0

    .line 157
    .local v6, status:Z
    :goto_0
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iget-object v8, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentBindNotice:Ljava/lang/String;

    #setter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$202(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iget-object v8, p1, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentNotice:Ljava/lang/String;

    #setter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mNoticeStr:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$302(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mNoticeStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$300(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, contents:[Ljava/lang/String;
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 162
    .local v1, content:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/ui/component/CarImageTextItemView;

    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v4, itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    invoke-virtual {v4}, Lcom/didi/car/ui/component/CarImageTextItemView;->setTextStyle()V

    .line 164
    const v7, 0x7f020274

    invoke-virtual {v4, v7, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 165
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 166
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mWxAgentContentLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 156
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #contents:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    .end local v5           #len$:I
    .end local v6           #status:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 159
    .restart local v6       #status:Z
    :cond_1
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mBindStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 168
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #contents:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_2
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iget v8, p1, Lcom/didi/car/model/CarWxAgentStatus;->bindStatus:I

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v7, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 176
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #contents:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #status:Z
    :goto_3
    return-void

    .line 170
    :cond_3
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentStatus;->getErrorCode()I

    move-result v7

    const/16 v8, 0x3f3

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentStatus;->getErrorCode()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_5

    .line 172
    :cond_4
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    :cond_5
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    const/4 v8, -0x1

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v7, v8}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    goto :goto_3
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, Lcom/didi/car/model/CarWxAgentStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$3;->onFinish(Lcom/didi/car/model/CarWxAgentStatus;)V

    return-void
.end method
