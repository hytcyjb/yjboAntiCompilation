.class Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->onItemSelected(ILcom/didi/common/ui/userinfo/UserInfo$Age;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$7;

.field final synthetic val$age:Lcom/didi/common/ui/userinfo/UserInfo$Age;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment$7;Lcom/didi/common/ui/userinfo/UserInfo$Age;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$7;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;->val$age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->rollbackToOld()V

    .line 438
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;->this$1:Lcom/didi/common/ui/userinfo/UserInfoFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;->val$age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setAge(Lcom/didi/common/ui/userinfo/UserInfo$Age;)V

    .line 434
    return-void
.end method
