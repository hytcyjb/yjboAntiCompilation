.class Lcom/didi/common/ui/userinfo/UserInfoFragment$9;
.super Lcom/didi/common/net/ResponseListener;
.source "UserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateAvatar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/ui/userinfo/UploadAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$avatarItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->val$avatarItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 606
    check-cast p1, Lcom/didi/common/ui/userinfo/UploadAvatarResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->onFail(Lcom/didi/common/ui/userinfo/UploadAvatarResult;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/ui/userinfo/UploadAvatarResult;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 631
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 632
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->isLoadingDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 635
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 606
    check-cast p1, Lcom/didi/common/ui/userinfo/UploadAvatarResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->onFinish(Lcom/didi/common/ui/userinfo/UploadAvatarResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/ui/userinfo/UploadAvatarResult;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 610
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1100(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1100(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 616
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/ui/userinfo/UploadAvatarResult;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mIsInfoChanged:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1202(Lcom/didi/common/ui/userinfo/UserInfoFragment;Z)Z

    .line 618
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/ui/userinfo/UploadAvatarResult;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;->val$avatarItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {p1}, Lcom/didi/common/ui/userinfo/UploadAvatarResult;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateImage(Ljava/lang/String;)V

    .line 620
    const v0, 0x7f0b055b

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 624
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->isLoadingDialogShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 627
    :cond_2
    return-void

    .line 622
    :cond_3
    const v0, 0x7f0b055a

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0
.end method
