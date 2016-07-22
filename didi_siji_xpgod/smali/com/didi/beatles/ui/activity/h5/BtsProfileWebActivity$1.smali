.class Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity$1;
.super Ljava/lang/Object;
.source "BtsProfileWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "jsonObject"

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackEditPage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    .line 60
    .local v0, userInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->WEB:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showUserInfoFragment(Lcom/didi/frame/FragmentMgr$UserInfoFrom;)V

    .line 62
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->finish()V

    .line 65
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
