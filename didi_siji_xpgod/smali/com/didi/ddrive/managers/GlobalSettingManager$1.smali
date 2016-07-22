.class Lcom/didi/ddrive/managers/GlobalSettingManager$1;
.super Ljava/lang/Object;
.source "GlobalSettingManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/GlobalSettingManager;->queryGlobalSetting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/GlobalSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/GlobalSettingManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/GlobalSettingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/ddrive/managers/GlobalSettingManager$1;->this$0:Lcom/didi/ddrive/managers/GlobalSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/ddrive/managers/GlobalSettingManager$1;->this$0:Lcom/didi/ddrive/managers/GlobalSettingManager;

    #calls: Lcom/didi/ddrive/managers/GlobalSettingManager;->restoreFromPreference()V
    invoke-static {v0}, Lcom/didi/ddrive/managers/GlobalSettingManager;->access$100(Lcom/didi/ddrive/managers/GlobalSettingManager;)V

    .line 72
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/GlobalSetting;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/didi/ddrive/managers/GlobalSettingManager$1;->this$0:Lcom/didi/ddrive/managers/GlobalSettingManager;

    #setter for: Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;
    invoke-static {v1, p1}, Lcom/didi/ddrive/managers/GlobalSettingManager;->access$002(Lcom/didi/ddrive/managers/GlobalSettingManager;Lcom/didi/ddrive/net/http/response/GlobalSetting;)Lcom/didi/ddrive/net/http/response/GlobalSetting;

    .line 65
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 66
    .local v0, preference:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-static {p1}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveSettings(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/didi/ddrive/net/http/response/GlobalSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/GlobalSettingManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/GlobalSetting;)V

    return-void
.end method
