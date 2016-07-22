.class Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity$1;
.super Ljava/lang/Object;
.source "BtsCertificationWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "jsonObject"

    .prologue
    const/4 v4, 0x0

    .line 40
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v4

    .line 42
    :cond_1
    const-string v2, "userAuthState"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, authState:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v1

    .line 46
    .local v1, userInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuthState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;

    const/4 v3, 0x1

    #setter for: Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->mNeedUpdateUserInfo:Z
    invoke-static {v2, v3}, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->access$002(Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;Z)Z

    goto :goto_0
.end method
