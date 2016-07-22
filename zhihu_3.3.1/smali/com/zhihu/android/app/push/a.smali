.class public Lcom/zhihu/android/app/push/a;
.super Ljava/lang/Object;
.source "PushHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    const-string v0, "PushHelper initialize"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setDebugLogEnabled(Z)V

    .line 58
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->useAVCloudCN()V

    .line 59
    const-string v0, "2bmnaulz28f7rirnyfnz3jevqmcxqdkw8xjmhdvnme0cwppz"

    const-string v1, "ii5d5hj7jkfts0fktldqymdibiw2p1xcoi0kp6u1wl1s3qam"

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    .line 62
    const-string v1, "appVersion"

    const-string v2, "3.3.1"

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v1, "buildVersion"

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v1, "modelString"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v1, "systemVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v1, "display"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-class v1, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, ""

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v1, v2}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    invoke-static {p0}, Lcom/zhihu/android/app/util/af;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "PushHelper choice on"

    invoke-static {v1}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 74
    const-string v1, "choice"

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v1, v2}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    :goto_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    const-string v2, "PushHelper subscribeUser"

    invoke-static {v2}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 82
    const-string v2, "pm_guest"

    invoke-static {p0, v2}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v1, v2}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    :goto_1
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 90
    return-void

    .line 76
    :cond_0
    const-string v1, "PushHelper choice off"

    invoke-static {v1}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 77
    const-string v1, "choice"

    invoke-static {p0, v1}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "PushHelper unsubscribeUser"

    invoke-static {v1}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 86
    const-string v1, "pm_guest"

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v1, v2}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/api/model/People;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v0, "PushHelper subscribeUser"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 110
    const-string v0, "pm_guest"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 114
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/api/model/People;Lcom/zhihu/android/api/model/People;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 130
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 132
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    const-string v0, "PushHelper choice on"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 95
    const-string v0, "choice"

    const-class v1, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 97
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/zhihu/android/api/model/People;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "PushHelper unsubscribeUser"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    const-string v0, "pm_guest"

    const-class v1, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 122
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 124
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    const-string v0, "PushHelper choice off"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 102
    const-string v0, "choice"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 104
    return-void
.end method
