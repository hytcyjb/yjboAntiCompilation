.class public Lcom/zhihu/android/app/util/t;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/util/t$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:Z

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zhihu/android/app/util/t;->a:J

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zhihu/android/app/util/t;->b:Z

    .line 66
    const v0, 0x186a8

    sput v0, Lcom/zhihu/android/app/util/t;->c:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/zhihu/android/app/util/t;->c:I

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    if-ne p1, v0, :cond_1

    .line 365
    const-string v0, "com.zhihu.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "100490701"

    .line 372
    :goto_0
    return-object v0

    .line 365
    :cond_0
    const-string v0, "101118708"

    goto :goto_0

    .line 366
    :cond_1
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    if-ne p1, v0, :cond_2

    .line 367
    const-string v0, "wxd3f6cb54399a8489"

    goto :goto_0

    .line 368
    :cond_2
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->SINA:Lcom/zhihu/android/api/util/GrantType;

    if-ne p1, v0, :cond_4

    .line 369
    const-string v0, "com.zhihu.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1081664247"

    goto :goto_0

    :cond_3
    const-string v0, "1709831639"

    goto :goto_0

    .line 372
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 294
    invoke-static {p0}, Lcom/zhihu/android/app/util/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/zhihu/android/app/util/t;->a(Landroid/app/Activity;Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;Ljava/lang/String;Lcom/zhihu/android/app/util/t$a;)V

    .line 89
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;Ljava/lang/String;Lcom/zhihu/android/app/util/t$a;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 100
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {v2}, Lcom/zhihu/android/app/a/a;->a()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/zhihu/android/api/model/Token;->userId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 104
    :try_start_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zhihu/android/app/a/b;->c(Lcom/zhihu/android/app/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_1
    new-instance v2, Lcom/zhihu/android/app/a/a;

    invoke-direct {v2, p1, p2}, Lcom/zhihu/android/app/a/a;-><init>(Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;)V

    .line 118
    :try_start_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zhihu/android/app/a/b;->a(Lcom/zhihu/android/app/a/a;)V

    .line 120
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zhihu/android/app/a/b;->b(Lcom/zhihu/android/app/a/a;)V

    .line 122
    iget-object v2, p1, Lcom/zhihu/android/api/model/Token;->unlockTicket:Ljava/lang/String;

    iget-wide v4, p1, Lcom/zhihu/android/api/model/Token;->lockIn:J

    invoke-static {v2, v4, v5}, Lcom/zhihu/android/app/util/av;->a(Ljava/lang/String;J)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/zhihu/android/api/model/Token;->expiresInSeconds:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x15

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;J)V

    .line 128
    iget-boolean v2, p2, Lcom/zhihu/android/api/model/People;->isActive:Z

    invoke-static {p0, v2}, Lcom/zhihu/android/app/util/af;->d(Landroid/content/Context;Z)V

    .line 130
    if-eqz p4, :cond_2

    invoke-interface {p4, p0}, Lcom/zhihu/android/app/util/t$a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    :cond_2
    instance-of v2, p0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v2, :cond_5

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/activity/MainActivity;->s()V

    .line 136
    invoke-static {p3}, Lcom/zhihu/android/app/util/t;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Landroid/net/Uri;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    invoke-static {v2}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v2}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/zhihu/android/app/push/a;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/People;Lcom/zhihu/android/api/model/People;)V

    goto :goto_1

    .line 112
    :cond_4
    invoke-static {p0, p2}, Lcom/zhihu/android/app/push/a;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/People;)V

    goto :goto_1

    .line 140
    :cond_5
    :try_start_2
    instance-of v2, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-static {p3}, Lcom/zhihu/android/app/util/t;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_6

    .line 149
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    :cond_6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/zhihu/android/app/ui/activity/a;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    :try_start_0
    const-string v1, "dialog_login"

    .line 258
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v1

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 260
    sget-wide v4, Lcom/zhihu/android/app/util/t;->a:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 261
    sput-wide v2, Lcom/zhihu/android/app/util/t;->a:J

    .line 262
    const-wide/16 v2, 0x1f4

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 264
    :goto_1
    if-eqz v0, :cond_0

    const-string v0, "dialog_login"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    const-string v2, "dialog_login"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Landroid/support/v4/app/p;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/zhihu/android/app/ui/activity/a;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->d()Lcom/zhihu/android/api/model/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->d()Lcom/zhihu/android/api/model/Token;

    move-result-object v0

    .line 178
    sget-boolean v2, Lcom/zhihu/android/app/util/t;->b:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/zhihu/android/api/model/Token;->refreshToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zhihu/android/app/util/t;->b:Z

    .line 188
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/zhihu/android/api/model/Token;->refreshToken:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/zhihu/android/api/model/Authorisation;->createRefreshToken(Landroid/content/Context;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v2

    .line 190
    const-class v0, Lcom/zhihu/android/api/b/a;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/a;

    new-instance v3, Lcom/zhihu/android/app/util/t$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/zhihu/android/app/util/t$1;-><init>(Lcom/zhihu/android/app/ui/activity/a;ILcom/zhihu/android/app/a/a;)V

    invoke-interface {v0, v2, v3}, Lcom/zhihu/android/api/b/a;->b(Lcom/zhihu/android/api/model/Authorisation;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-static {p0}, Lcom/zhihu/android/app/util/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p0}, Lcom/zhihu/android/app/util/g;->a(Landroid/content/Context;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    .line 325
    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/zhihu/android/app/ui/activity/a;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-static {p1, v2, v2, v0}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/a;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_login"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 53
    sput-boolean p0, Lcom/zhihu/android/app/util/t;->b:Z

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "+86"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 310
    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_0
    const-string v0, "[1][3578]\\d{9}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 358
    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :goto_0
    return-object v0

    .line 280
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method
