.class Lcom/didi/common/ui/userinfo/UserInfoFragment$7;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->showSelectWindow(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener",
        "<",
        "Lcom/didi/common/ui/userinfo/UserInfo$Age;",
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
    .line 424
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILcom/didi/common/ui/userinfo/UserInfo$Age;)V
    .locals 7
    .parameter "position"
    .parameter "age"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->val$ageItemView:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    iget-object v1, p2, Lcom/didi/common/ui/userinfo/UserInfo$Age;->ageContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;

    invoke-direct {v1, p0, p2}, Lcom/didi/common/ui/userinfo/UserInfoFragment$7$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment$7;Lcom/didi/common/ui/userinfo/UserInfo$Age;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "age"

    iget v6, p2, Lcom/didi/common/ui/userinfo/UserInfo$Age;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$700(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    check-cast p2, Lcom/didi/common/ui/userinfo/UserInfo$Age;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;->onItemSelected(ILcom/didi/common/ui/userinfo/UserInfo$Age;)V

    return-void
.end method
