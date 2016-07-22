.class public Lcom/zhihu/android/app/ZhihuApplication;
.super Landroid/support/b/b;
.source "ZhihuApplication.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/zhihu/android/bumblebee/http/f;


# static fields
.field private static final c:Lcom/zhihu/android/api/a/c;

.field private static final d:Lcom/zhihu/android/api/a/c;


# instance fields
.field private a:Lcom/squareup/a/b;

.field private b:Lcom/zhihu/android/bumblebee/http/a;

.field private e:Lcom/zhihu/android/api/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/zhihu/android/api/a/d;->a()Lcom/zhihu/android/api/a/c;

    move-result-object v0

    sput-object v0, Lcom/zhihu/android/app/ZhihuApplication;->c:Lcom/zhihu/android/api/a/c;

    .line 95
    invoke-static {}, Lcom/zhihu/android/api/a/a;->a()Lcom/zhihu/android/api/a/c;

    move-result-object v0

    sput-object v0, Lcom/zhihu/android/app/ZhihuApplication;->d:Lcom/zhihu/android/api/a/c;

    .line 101
    :try_start_0
    const-string v0, "webp"

    invoke-static {v0}, Lcom/facebook/common/f/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/b/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/squareup/a/b;
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ZhihuApplication;

    .line 208
    iget-object v0, v0, Lcom/zhihu/android/app/ZhihuApplication;->a:Lcom/squareup/a/b;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ZhihuApplication;

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 157
    invoke-static {p0}, Lcom/zhihu/android/app/util/ba;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/zhihu/android/app/util/an;->a(Landroid/content/Context;)V

    .line 159
    invoke-static {p0}, Lcom/zhihu/android/app/util/ag;->a(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const v2, -0xff8827

    const/4 v1, 0x0

    .line 163
    const-string v0, "5d2a02b5170bac988999840140418700"

    invoke-static {p0, v0}, Lcom/instabug/library/Instabug;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/instabug/library/Instabug;

    .line 164
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v4, v1}, Lcom/instabug/library/Instabug;->a(ZZ)Lcom/instabug/library/Instabug;

    .line 166
    invoke-virtual {v0, v4}, Lcom/instabug/library/Instabug;->b(Z)Lcom/instabug/library/Instabug;

    .line 167
    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->c(Z)Lcom/instabug/library/Instabug;

    .line 168
    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->a(Z)Lcom/instabug/library/Instabug;

    .line 169
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->b(Ljava/lang/String;)Lcom/instabug/library/Instabug;

    .line 172
    :cond_0
    sget-object v1, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventNone:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->a(Lcom/instabug/library/Instabug$IBGInvocationEvent;)Lcom/instabug/library/Instabug;

    .line 173
    sget-object v1, Lcom/instabug/library/Instabug$SdkThemingMode;->APP_COMPAT_MATERIAL:Lcom/instabug/library/Instabug$SdkThemingMode;

    sget-object v4, Lcom/instabug/library/Instabug$SdkThemeSource;->CALLER_THEME:Lcom/instabug/library/Instabug$SdkThemeSource;

    invoke-virtual {v0, v1, v4}, Lcom/instabug/library/Instabug;->a(Lcom/instabug/library/Instabug$SdkThemingMode;Lcom/instabug/library/Instabug$SdkThemeSource;)Lcom/instabug/library/Instabug;

    .line 174
    const v1, -0x101011

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/instabug/library/Instabug;->a(IIIII)Lcom/instabug/library/Instabug;

    .line 175
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/squareup/okhttp/s;

    invoke-direct {v0}, Lcom/squareup/okhttp/s;-><init>()V

    .line 179
    invoke-static {p0}, Lcom/facebook/cache/disk/c;->a(Landroid/content/Context;)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ZhihuApplication$1;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ZhihuApplication$1;-><init>(Lcom/zhihu/android/app/ZhihuApplication;)V

    invoke-virtual {v1, v2}, Lcom/facebook/cache/disk/c$a;->a(Lcom/facebook/common/internal/i;)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    const-string v2, "image_cache"

    .line 185
    invoke-virtual {v1, v2}, Lcom/facebook/cache/disk/c$a;->a(Ljava/lang/String;)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    const-wide/32 v2, 0x6400000

    invoke-virtual {v1, v2, v3}, Lcom/facebook/cache/disk/c$a;->a(J)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    const-wide/32 v2, 0x3200000

    invoke-virtual {v1, v2, v3}, Lcom/facebook/cache/disk/c$a;->b(J)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Lcom/facebook/cache/disk/c$a;->c(J)Lcom/facebook/cache/disk/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cache/disk/c$a;->a()Lcom/facebook/cache/disk/c;

    move-result-object v1

    .line 186
    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/a/a/a;->a(Landroid/content/Context;Lcom/squareup/okhttp/s;)Lcom/facebook/imagepipeline/d/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/d/d$a;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/d/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d$a;->a()Lcom/facebook/imagepipeline/d/d;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;Z)V

    .line 190
    new-instance v1, Lcom/zhihu/android/app/ZhihuApplication$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ZhihuApplication$2;-><init>(Lcom/zhihu/android/app/ZhihuApplication;)V

    invoke-static {v1}, Lcom/facebook/common/f/a;->a(Lcom/facebook/common/f/a$b;)V

    .line 203
    invoke-static {p0, v0}, Lcom/facebook/drawee/a/a/a;->a(Landroid/content/Context;Lcom/facebook/imagepipeline/d/d;)V

    .line 204
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/zhihu/android/bumblebee/http/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/api/client/http/HttpRequestInitializer;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/zhihu/android/bumblebee/http/a;-><init>([Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    .line 214
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    const-class v1, Lcom/zhihu/android/api/a/f;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/bumblebee/http/a;->b(Ljava/lang/Class;)V

    .line 215
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/bumblebee/http/a;->a(Lcom/zhihu/android/bumblebee/http/f;)V

    .line 216
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/b;->a(Landroid/content/Context;Lcom/zhihu/android/bumblebee/http/a;)V

    .line 217
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/bumblebee/http/a;->a(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 306
    const/4 v1, 0x1

    const-string v2, "clean_2.x_useless_cache"

    new-instance v3, Lcom/zhihu/android/app/ZhihuApplication$4;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ZhihuApplication$4;-><init>(Lcom/zhihu/android/app/ZhihuApplication;)V

    const-wide/16 v4, 0x2710

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Runnable;J)V

    .line 313
    return-void
.end method

.method private g()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method


# virtual methods
.method public a()Lcom/zhihu/android/bumblebee/http/a;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->b:Lcom/zhihu/android/bumblebee/http/a;

    return-object v0
.end method

.method public a(Lcom/google/api/client/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-static {}, Lcom/zhihu/android/api/a/b;->a()Lcom/zhihu/android/api/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/api/a/b;->a(Lcom/google/api/client/http/HttpResponse;)V

    .line 285
    return-void
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 229
    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 231
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "x-api-version"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "x-app-version"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "x-app-za"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "x-app-build"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Lcom/zhihu/android/app/util/b;->a(Lcom/google/api/client/http/HttpRequest;)V

    .line 237
    sget-boolean v0, Lcom/zhihu/android/base/util/SystemUtils;->h:Z

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "http.keepAlive"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    new-instance v0, Lcom/zhihu/android/api/a/e;

    invoke-direct {v0, p0}, Lcom/zhihu/android/api/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->e:Lcom/zhihu/android/api/a/e;

    .line 242
    iget-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->e:Lcom/zhihu/android/api/a/e;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/api/a/e;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 244
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getAuthorization()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Lcom/zhihu/android/app/ZhihuApplication;->d:Lcom/zhihu/android/api/a/c;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zhihu/android/api/a/c;->a(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zhihu/android/api/a/b;->a()Lcom/zhihu/android/api/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/api/a/b;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 255
    new-instance v0, Lcom/zhihu/android/app/ZhihuApplication$3;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ZhihuApplication$3;-><init>(Lcom/zhihu/android/app/ZhihuApplication;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 272
    return-void

    .line 249
    :cond_2
    sget-object v0, Lcom/zhihu/android/app/ZhihuApplication;->c:Lcom/zhihu/android/api/a/c;

    const-string v1, "8d5227e0aaaa4797a763ac64e0c3b8"

    invoke-interface {v0, p1, v1}, Lcom/zhihu/android/api/a/c;->a(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Landroid/support/b/b;->onCreate()V

    .line 112
    invoke-static {p0}, Lcom/zhihu/android/app/util/b;->a(Landroid/content/Context;)V

    .line 115
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->NONE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;)V

    .line 116
    new-array v0, v3, [Lio/fabric/sdk/android/h;

    new-instance v1, Lcom/crashlytics/android/a;

    invoke-direct {v1}, Lcom/crashlytics/android/a;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;

    .line 120
    :try_start_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/a/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhihu/android/app/b/a;->a(Landroid/content/Context;Lcom/zhihu/android/app/a/a;)V

    .line 127
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->e()V

    .line 128
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->d()V

    .line 129
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->g()V

    .line 132
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/squareup/a/a;->a(Landroid/app/Application;)Lcom/squareup/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ZhihuApplication;->a:Lcom/squareup/a/b;

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/zhihu/android/app/b/b;->a(Landroid/content/Context;)V

    .line 138
    invoke-static {p0}, Lcom/zhihu/android/app/push/a;->a(Landroid/content/Context;)V

    .line 139
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->b()V

    .line 140
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->c()V

    .line 141
    const-string v0, "release"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    const v1, 0x7f090273

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ZhihuApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {p0, v3}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;Z)V

    .line 147
    :cond_1
    const v0, 0x7f070001

    invoke-static {p0, v0, v2}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;IZ)V

    .line 152
    invoke-direct {p0}, Lcom/zhihu/android/app/ZhihuApplication;->f()V

    .line 154
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .parameter

    .prologue
    .line 295
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/b/b;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method
