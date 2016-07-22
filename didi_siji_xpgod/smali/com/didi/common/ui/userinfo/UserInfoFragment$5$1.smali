.class Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment$5;->onItemSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$5;

.field final synthetic val$itemStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment$5;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$5;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;->val$itemStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$5;

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5;->val$sexItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->rollbackToOld()V

    .line 386
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$5;

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$5$1;->val$itemStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setGenderStr(Ljava/lang/String;)V

    .line 382
    return-void
.end method
