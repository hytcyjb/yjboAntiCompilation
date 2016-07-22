.class public Lcom/zhihu/android/app/util/c;
.super Ljava/lang/Object;
.source "AppUpdateHelper.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/zhihu/android/app/util/c;->a:I

    return-void
.end method

.method static synthetic a(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/c;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/app/util/c;->b(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;Z)V

    .line 80
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/zhihu/android/app/util/c;->b(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/m;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/m;

    .line 59
    const-string v1, "3.3.1"

    .line 62
    const-string v1, "myapp"

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "myapp"

    const-string v2, "beta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "myapp"

    .line 64
    :goto_0
    const-string v2, "3.3.1"

    const/16 v3, 0x136

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v5, Lcom/zhihu/android/app/util/c$1;

    invoke-direct {v5, p0, p1}, Lcom/zhihu/android/app/util/c$1;-><init>(Landroid/content/Context;Z)V

    invoke-interface/range {v0 .. v5}, Lcom/zhihu/android/api/b/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 76
    return-void

    .line 62
    :cond_1
    const-string v1, "release"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 204
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0903f2

    const v3, 0x7f0903f1

    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/AppVersion;->hasUpdate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/android/api/model/AppVersion;->getLatest()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/c;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_0
    const-string v0, "myapp"

    const-string v2, "alpha"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "myapp"

    const-string v2, "beta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "myapp"

    .line 120
    :goto_0
    const-string v2, "release"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    if-nez p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/zhihu/android/app/ui/dialog/a;->a(Z)Lcom/zhihu/android/app/ui/dialog/a;

    move-result-object v1

    .line 126
    :goto_1
    iget-object v2, p1, Lcom/zhihu/android/api/model/AppVersion;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/dialog/a;->a(Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/zhihu/android/app/util/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    const v2, 0x7f0903f3

    invoke-virtual {v1, v2, v4, v3}, Lcom/zhihu/android/app/ui/dialog/a;->a(III)V

    .line 139
    :goto_2
    new-instance v2, Lcom/zhihu/android/app/util/c$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/zhihu/android/app/util/c$2;-><init>(Landroid/content/Context;Lcom/zhihu/android/api/model/AppVersion;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/ui/dialog/a;->a(Lcom/zhihu/android/app/ui/dialog/h$a;)V

    .line 189
    :try_start_0
    check-cast p0, Landroid/support/v4/app/l;

    invoke-virtual {p0}, Landroid/support/v4/app/l;->f()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v2, "update"

    invoke-virtual {v1, v0, v2}, Lcom/zhihu/android/app/ui/dialog/a;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_3
    :goto_3
    return-void

    .line 118
    :cond_4
    const-string v0, "release"

    goto :goto_0

    .line 123
    :cond_5
    invoke-static {v1}, Lcom/zhihu/android/app/ui/dialog/a;->a(Z)Lcom/zhihu/android/app/ui/dialog/a;

    move-result-object v1

    goto :goto_1

    .line 136
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/zhihu/android/app/ui/dialog/a;->a(III)V

    goto :goto_2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 195
    :cond_7
    if-eqz p2, :cond_3

    .line 196
    const v0, 0x7f0903ca

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_read_update"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 85
    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_read_update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method
