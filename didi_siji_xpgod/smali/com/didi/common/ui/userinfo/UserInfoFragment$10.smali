.class Lcom/didi/common/ui/userinfo/UserInfoFragment$10;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateNickName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$nickNameItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Ljava/lang/String;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickNameItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickNameItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->rollbackToOld()V

    .line 657
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 648
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfo;->setUserNickname(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v0

    .line 651
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;->val$nickName:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->nick_name:Ljava/lang/String;

    .line 652
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    .line 653
    return-void
.end method
