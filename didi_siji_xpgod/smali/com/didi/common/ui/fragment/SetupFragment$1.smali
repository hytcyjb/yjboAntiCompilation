.class Lcom/didi/common/ui/fragment/SetupFragment$1;
.super Lcom/didi/common/net/ResponseListener;
.source "SetupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/SetupFragment;->getShowContentFromNet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonVirtualMobile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$1;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, Lcom/didi/common/model/CommonVirtualMobile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SetupFragment$1;->onSuccess(Lcom/didi/common/model/CommonVirtualMobile;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonVirtualMobile;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 200
    sput-object p1, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    .line 201
    sget-object v0, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonVirtualMobile;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$1;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->layoutVirtualSwitch:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$000(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$1;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->lineVirtualSwitch:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$100(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$1;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->layoutVirtualSwitch:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$000(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/SetupFragment$1;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/SetupFragment;->access$200(Lcom/didi/common/ui/fragment/SetupFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_0
    return-void
.end method
