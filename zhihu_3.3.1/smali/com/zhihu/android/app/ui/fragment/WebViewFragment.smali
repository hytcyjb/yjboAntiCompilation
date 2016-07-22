.class public Lcom/zhihu/android/app/ui/fragment/WebViewFragment;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$a;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/zhihu/android/app/e/a;
.implements Lcom/zhihu/android/app/webkit/b$a;
.implements Lcom/zhihu/android/app/webkit/c$a;
.implements Lcom/zhihu/android/app/webkit/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/WebViewFragment$Link;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/zhihu/android/app/util/bb;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "extra_can_share"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    new-instance v1, Lcom/zhihu/android/app/util/bb;

    const-class v2, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webview-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 180
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "x-app-za"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a:Ljava/lang/String;

    .line 210
    :goto_0
    const-string v2, "zhihu://login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 228
    :goto_2
    return v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhihu://open_url?url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4, v1}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    const-string v3, "dialog_login"

    invoke-virtual {v0, v2, v3}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    const-string v2, "zhihu://register"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b(Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 225
    goto :goto_2

    .line 222
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhihu://open_url?url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lcom/zhihu/android/app/ui/dialog/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/app/ui/dialog/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    const-string v3, "dialog_register"

    invoke-virtual {v0, v2, v3}, Lcom/zhihu/android/app/ui/dialog/j;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_3

    .line 228
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private d()V
    .locals 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 259
    const/4 v0, 0x0

    .line 264
    :goto_0
    new-instance v2, Lcom/zhihu/android/app/ui/fragment/WebViewFragment$Link;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment$Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {v2}, Lcom/zhihu/android/app/ui/fragment/b/g;->a(Landroid/os/Parcelable;)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 267
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https?://([0-9a-zA-Z][0-9a-zA-Z_\\-\\.]*\\.)?zhihu\\.com(/?|/.*)"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/app/a/a;->d()Lcom/zhihu/android/api/model/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/android/api/model/Token;->getCookie()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 242
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; domain=zhihu.com; path=*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_2
    move v0, v1

    .line 248
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const v0, 0x7f04006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 121
    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 122
    const v0, 0x7f10010c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    .line 124
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 293
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Ljava/lang/CharSequence;)V

    .line 296
    :cond_0
    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 307
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-direct {p0, p2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string v1, "zhihu://webviewform/done"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/zhihu/android/app/util/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->t()V

    goto :goto_0

    .line 321
    :cond_2
    invoke-direct {p0, p2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    const-string v2, "x-app-za"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v2, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 330
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->setHasOptionsMenu(Z)V

    .line 105
    const-string v0, "extra_url"

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->l()V

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d(Z)V

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    const v0, 0x7f11001e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0903c4

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f100264
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 162
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_can_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    const v1, 0x7f100264

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->z()V

    .line 133
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 135
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Landroid/webkit/WebSettings;)V

    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    const-string v1, "ZhihuAndroid"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/zhihu/android/app/webkit/c;

    invoke-direct {v0}, Lcom/zhihu/android/app/webkit/c;-><init>()V

    .line 140
    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/webkit/c;->a(Lcom/zhihu/android/app/webkit/c$a;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/webkit/c;->a(Lcom/zhihu/android/app/webkit/c$b;)V

    .line 142
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 144
    new-instance v0, Lcom/zhihu/android/app/webkit/b;

    invoke-direct {v0}, Lcom/zhihu/android/app/webkit/b;-><init>()V

    .line 145
    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/webkit/b;->a(Lcom/zhihu/android/app/webkit/b$a;)V

    .line 146
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 150
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->b(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setShareDescription(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 281
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->e:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setSharePicture(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 286
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->f:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setShareTitle(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->d:Ljava/lang/String;

    .line 277
    return-void
.end method
