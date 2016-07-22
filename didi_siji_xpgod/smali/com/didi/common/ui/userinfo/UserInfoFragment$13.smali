.class Lcom/didi/common/ui/userinfo/UserInfoFragment$13;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateJobInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$corp:Ljava/lang/String;

.field final synthetic val$employ:Ljava/lang/String;

.field final synthetic val$jobInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$corp:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$employ:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$jobInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$jobInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->rollbackToOld()V

    .line 714
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$corp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setCrop(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;->val$employ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setEmploy(Ljava/lang/String;)V

    .line 710
    return-void
.end method
