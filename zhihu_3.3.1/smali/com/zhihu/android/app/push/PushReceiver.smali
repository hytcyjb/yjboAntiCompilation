.class public Lcom/zhihu/android/app/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zhihu/android/api/model/Push;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-static {p1}, Lcom/zhihu/android/app/util/af;->f(Landroid/content/Context;)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 80
    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhihu/android/app/push/PushReceiver;->a:Landroid/content/Context;

    .line 47
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/zhihu/android/app/push/PushReceiver;->c:Landroid/app/NotificationManager;

    .line 48
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/push/PushReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    const-string v1, "com.parse.Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/api/model/Push;

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/json/jackson2/JacksonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Push;

    iput-object v0, p0, Lcom/zhihu/android/app/push/PushReceiver;->b:Lcom/zhihu/android/api/model/Push;

    .line 58
    invoke-static {}, Lcom/zhihu/android/app/push/b;->a()Lcom/zhihu/android/app/push/b;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/zhihu/android/app/push/PushReceiver;->b:Lcom/zhihu/android/api/model/Push;

    invoke-virtual {v0, p1, v1}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "Parse notification occur error"

    invoke-static {v1, v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
