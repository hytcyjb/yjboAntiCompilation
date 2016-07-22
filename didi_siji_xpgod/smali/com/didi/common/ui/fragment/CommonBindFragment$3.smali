.class Lcom/didi/common/ui/fragment/CommonBindFragment$3;
.super Ljava/lang/Object;
.source "CommonBindFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/Share$ShareFriends;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonBindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonBindFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindSinaFailed()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$100(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$100(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 208
    return-void
.end method

.method public bindTencentFailed()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$200(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$200(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 202
    return-void
.end method

.method public getSinaFriends()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$100(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f0b0553

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public getTencentFriends()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$200(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f0b0553

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public shareSina()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public shareTencent()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public unBindSinaFailed()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public unBindSinaSucc()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$100(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f0b01f4

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public unBindTencentFailed()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public unBindTencentSucc()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonBindFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->access$200(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;

    move-result-object v0

    const v1, 0x7f0b01f4

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
