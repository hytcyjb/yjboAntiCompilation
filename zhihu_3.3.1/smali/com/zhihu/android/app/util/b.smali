.class public Lcom/zhihu/android/app/util/b;
.super Ljava/lang/Object;
.source "AlphaSettings.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v0, "myapp"

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sput-boolean v3, Lcom/zhihu/android/app/util/b;->c:Z

    .line 88
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string v1, "api_environment"

    const-string v2, "release"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/zhihu/android/app/util/b;->c:Z

    .line 62
    sget-boolean v1, Lcom/zhihu/android/app/util/b;->c:Z

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "\u5f53\u524dAPI \u662f\u6d4b\u8bd5\u73af\u5883\uff0c\u8bf7\u4f7f\u7528\u6d4b\u8bd5\u8d26\u53f7"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_1
    new-instance v1, Lcom/zhihu/android/app/util/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/util/b$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zhihu/android/app/util/b;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 79
    sget-object v1, Lcom/zhihu/android/app/util/b;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zhihu/android/app/util/b;->a:Ljava/lang/String;

    .line 82
    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zhihu/android/app/util/b;->b:Ljava/lang/String;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "debug_api_environment"

    sget-boolean v2, Lcom/zhihu/android/app/util/b;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v1, "debug_client_id"

    sget-object v2, Lcom/zhihu/android/app/util/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "debug_client_secret"

    sget-object v2, Lcom/zhihu/android/app/util/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/http/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    sget-boolean v0, Lcom/zhihu/android/app/util/b;->c:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    const-string v1, "api_environment"

    const-string v2, "release"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/zhihu/android/bumblebee/http/a;->a(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    sget-boolean v0, Lcom/zhihu/android/app/util/b;->c:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    .line 131
    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/app/util/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/app/util/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/zhihu/android/app/util/b;->c:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-boolean p0, Lcom/zhihu/android/app/util/b;->c:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/a/b;->c(Lcom/zhihu/android/app/a/a;)V

    .line 96
    invoke-static {p0}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/bumblebee/http/a;->c()Ljava/util/concurrent/Future;

    .line 99
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 100
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 102
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 103
    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/push/a;->b(Landroid/content/Context;Lcom/zhihu/android/api/model/People;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    const-string v0, "\u5df2\u5207\u6362 API \u73af\u5883\uff0c\u8bf7\u91cd\u542f\u5e94\u7528\u5e76\u91cd\u65b0\u767b\u5f55"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance v1, Lcom/zhihu/android/app/util/b$2;

    invoke-direct {v1}, Lcom/zhihu/android/app/util/b$2;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
