.class public Lcom/zhihu/android/app/util/p;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public static a(Lcom/zhihu/android/app/util/bb;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "intent_extra_fragment"

    invoke-virtual {p0}, Lcom/zhihu/android/app/util/bb;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "intent_extra_arguments"

    invoke-virtual {p0}, Lcom/zhihu/android/app/util/bb;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    const-string v1, "intent_extra_tag"

    invoke-virtual {p0}, Lcom/zhihu/android/app/util/bb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "intent_extra_clear_stack"

    invoke-virtual {p0}, Lcom/zhihu/android/app/util/bb;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhihu.intent.action.FRAGMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    const-string v0, "com.zhihu.android"

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "intent_extra_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v2, "zhihu.intent.action.OPEN_URL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    const-string v0, "com.zhihu.android"

    const-class v2, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    return-object v1
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const v0, 0x7f0903c9

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/c;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 386
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return v0

    .line 255
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 191
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 198
    if-eqz v2, :cond_2

    move v0, v1

    .line 199
    goto :goto_0

    .line 202
    :cond_2
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 204
    if-eqz v2, :cond_3

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_3
    if-eqz p2, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return v0

    .line 236
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 151
    if-eqz v2, :cond_2

    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 157
    if-eqz v2, :cond_3

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    if-eqz p2, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v0, v1

    .line 172
    goto :goto_0

    .line 169
    :cond_4
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 266
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 268
    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    :cond_0
    :goto_0
    return-object p0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/zhihu/android/app/ui/fragment/a/e;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 390
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Z)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 499
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/zhihu/android/app/ui/fragment/d/b;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 394
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1}, Lcom/zhihu/android/app/ui/fragment/l/e;->b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 398
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 484
    const-string v3, "zhihu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "open_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    invoke-static {p0, v1}, Lcom/zhihu/android/app/util/p;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/zhihu/android/app/ui/fragment/b;->a(J)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 410
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1}, Lcom/zhihu/android/app/ui/fragment/o/f;->b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 402
    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 284
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 288
    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 289
    :cond_0
    const-string v3, "www.zhihu.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "zhihu.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "m.zhihu.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    :cond_1
    const-string v3, "/question/[0-9]*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 294
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;J)V

    :goto_0
    move v0, v1

    .line 381
    :cond_2
    :goto_1
    return v0

    .line 297
    :cond_3
    const-string v3, "/question/[0-9]*/answer/[0-9]*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 298
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 300
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;J)V

    goto :goto_0

    .line 303
    :cond_4
    const-string v3, "/collection/[0-9]*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 304
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 306
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->c(Landroid/content/Context;J)V

    goto :goto_0

    .line 309
    :cond_5
    const-string v3, "/people/.*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 310
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_6
    const-string v3, "/topic/.*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 316
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_7
    const-string v3, "/roundtable/.*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_8
    const-string v3, "zhuanlan.zhihu.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 331
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->e(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 341
    goto :goto_1

    .line 334
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 335
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 337
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;J)V

    goto :goto_2

    .line 343
    :cond_a
    const-string v5, "zhihu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const-string v3, "questions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 345
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 347
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;J)V

    :goto_3
    move v0, v1

    .line 379
    goto/16 :goto_1

    .line 348
    :cond_b
    const-string v3, "answers"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 349
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 351
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;J)V

    goto :goto_3

    .line 352
    :cond_c
    const-string v3, "collections"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 353
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 355
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->c(Landroid/content/Context;J)V

    goto :goto_3

    .line 356
    :cond_d
    const-string v3, "people"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 357
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :cond_e
    const-string v3, "topics"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 361
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 364
    :cond_f
    const-string v3, "columns"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 365
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 368
    :cond_10
    const-string v3, "articles"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 369
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 371
    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->d(Landroid/content/Context;J)V

    goto :goto_3

    .line 372
    :cond_11
    const-string v3, "roundtables"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/p;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1}, Lcom/zhihu/android/app/ui/fragment/e/a;->b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 406
    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-static {p0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-static {p1}, Lcom/zhihu/android/app/ui/fragment/n/e;->b(Ljava/lang/String;)Lcom/zhihu/android/app/util/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 414
    return-void
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    if-nez p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zhihu/android/app/util/p;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 447
    goto :goto_0

    .line 450
    :cond_2
    const-string v2, "https?://link\\.zhihu\\.com(/?|/.*)"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    const-string v2, "https?://([0-9a-zA-Z][0-9a-zA-Z_\\-\\.]*\\.)?zhihu\\.com(/?|/.*)"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-static {p0, p1}, Lcom/zhihu/android/app/util/p;->h(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 457
    goto :goto_0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/app/util/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 503
    return-void
.end method
