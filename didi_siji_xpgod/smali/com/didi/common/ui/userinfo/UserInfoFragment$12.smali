.class Lcom/didi/common/ui/userinfo/UserInfoFragment$12;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateTrade(Lcom/didi/common/ui/userinfo/UserInfo$Trade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$businessFieldItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

.field final synthetic val$trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfo$Trade;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->val$trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    iput-object p3, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->val$businessFieldItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->val$businessFieldItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->rollbackToOld()V

    .line 695
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;->val$trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setTrade(Lcom/didi/common/ui/userinfo/UserInfo$Trade;)V

    .line 691
    return-void
.end method
