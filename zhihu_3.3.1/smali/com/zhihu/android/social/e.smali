.class public Lcom/zhihu/android/social/e;
.super Lcom/zhihu/android/social/a;
.source "WeChatApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/social/e$a;
    }
.end annotation


# static fields
.field private static d:Lcom/zhihu/android/social/e;

.field private static e:Lcom/tencent/mm/sdk/g/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zhihu/android/social/a;-><init>()V

    .line 47
    return-void
.end method

.method public static a()Lcom/zhihu/android/social/e;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/zhihu/android/social/e;->d:Lcom/zhihu/android/social/e;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/zhihu/android/social/e;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/zhihu/android/social/e;->d:Lcom/zhihu/android/social/e;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/zhihu/android/social/e;

    invoke-direct {v0}, Lcom/zhihu/android/social/e;-><init>()V

    sput-object v0, Lcom/zhihu/android/social/e;->d:Lcom/zhihu/android/social/e;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/zhihu/android/social/e;->d:Lcom/zhihu/android/social/e;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 139
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 141
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 142
    iput-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$b;

    .line 143
    iput-object p3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 144
    iput-object p4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 145
    iput-object p5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 147
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/d$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/d$a;-><init>()V

    .line 148
    const-string v2, "webpage"

    invoke-direct {p0, v2}, Lcom/zhihu/android/social/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/d$a;->a:Ljava/lang/String;

    .line 149
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/d$a;->c:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareImgUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/d$a;->d:I

    .line 161
    :cond_0
    :goto_0
    sget-object v1, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/g/a;->a(Lcom/tencent/mm/sdk/d/a;)Z

    .line 162
    return-void

    .line 155
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareToTimeLineUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/d$a;->d:I

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AddFavoriteUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/d$a;->d:I

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 165
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-super/range {p0 .. p6}, Lcom/zhihu/android/social/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/social/e;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 112
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/social/a;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 100
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/c$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/c$a;-><init>()V

    .line 101
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/c$a;->c:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.zhihu.android.social.oauth2.state.prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zhihu/android/social/utils/a;->a:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/zhihu/android/social/utils/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/c$a;->d:Ljava/lang/String;

    .line 104
    sget-object v1, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/g/a;->a(Lcom/tencent/mm/sdk/d/a;)Z

    .line 105
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/social/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zhihu/android/social/e;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/g/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/g/a;

    move-result-object v0

    sput-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    .line 75
    :cond_0
    return-void
.end method

.method a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/sdk/g/a;->a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)Z

    .line 176
    return-void
.end method

.method a(Ljava/lang/String;Lcom/zhihu/android/social/a/b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Lcom/zhihu/android/social/b/d$a;

    invoke-direct {v0}, Lcom/zhihu/android/social/b/d$a;-><init>()V

    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token"

    invoke-virtual {v0, v1}, Lcom/zhihu/android/social/b/d$a;->b(Ljava/lang/String;)Lcom/zhihu/android/social/b/d$a;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/social/b/c;

    iget-object v2, p0, Lcom/zhihu/android/social/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhihu/android/social/e;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/zhihu/android/social/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/social/b/d$a;->b(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/zhihu/android/social/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/social/b/d$a;->a()Lcom/zhihu/android/social/b/d;

    move-result-object v2

    .line 171
    new-instance v0, Lcom/zhihu/android/social/e$a;

    iget-object v4, p0, Lcom/zhihu/android/social/e;->c:Lcom/zhihu/android/social/a/a;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/social/e$a;-><init>(Lcom/zhihu/android/social/e;Lcom/zhihu/android/social/b/d;Ljava/lang/String;Lcom/zhihu/android/social/a/a;Lcom/zhihu/android/social/a/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/social/e$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/zhihu/android/social/a;->a(Landroid/content/Context;)Z

    .line 93
    sget-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/zhihu/android/social/utils/SocialPlatform;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/zhihu/android/social/utils/SocialPlatform;->WeChat:Lcom/zhihu/android/social/utils/SocialPlatform;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/zhihu/android/social/a;->b(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/zhihu/android/social/e;->e:Lcom/tencent/mm/sdk/g/a;

    iget-object v1, p0, Lcom/zhihu/android/social/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/g/a;->a(Ljava/lang/String;)Z

    .line 66
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WeChat is not support, please use isSupport Method first!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method
