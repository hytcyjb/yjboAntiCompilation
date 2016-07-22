.class Lcom/didi/common/ui/userinfo/UserInfoFragment$6;
.super Lcom/didi/common/net/ResponseListener;
.source "UserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->selectAge(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/ui/userinfo/AgeList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 400
    check-cast p1, Lcom/didi/common/ui/userinfo/AgeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->onFail(Lcom/didi/common/ui/userinfo/AgeList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/ui/userinfo/AgeList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 410
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/ui/userinfo/AgeList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/ui/userinfo/AgeList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 400
    check-cast p1, Lcom/didi/common/ui/userinfo/AgeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->onFinish(Lcom/didi/common/ui/userinfo/AgeList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/ui/userinfo/AgeList;)V
    .locals 2
    .parameter "ageList"

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 404
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #setter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgeList:Lcom/didi/common/ui/userinfo/AgeList;
    invoke-static {v0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$802(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/AgeList;)Lcom/didi/common/ui/userinfo/AgeList;

    .line 405
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;->val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->showSelectWindow(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$900(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    .line 406
    return-void
.end method
