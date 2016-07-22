.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$1;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 120
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    .line 124
    .local v2, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmupConfigString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, configStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    const-class v6, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    invoke-static {v1, v6}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    .line 130
    .local v0, config:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    iget-object v5, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;->url:Ljava/lang/String;

    .line 132
    .local v5, url:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glClick="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    new-instance v4, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v4}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 134
    .local v4, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object v5, v4, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 136
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v6

    const-class v7, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "data_model"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    iget-object v6, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-virtual {v6}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
