.class public Lcom/zhihu/android/app/webkit/a;
.super Ljava/lang/Object;
.source "ZHBridgeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/webkit/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/zhihu/android/app/webkit/a$a;

.field protected b:Lcom/zhihu/android/base/widget/ZHWebView;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/zhihu/android/base/widget/ZHWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/webkit/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/webkit/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/webkit/a;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/webkit/a;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    const-string v1, "onImageLoadFailed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/ZHWebView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u6210\u529f: File: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;)V

    .line 271
    const/16 v0, 0x13

    :try_start_0
    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    const-string v1, "onImageLoadSuccess"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/ZHWebView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    :goto_1
    return-void

    .line 271
    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 251
    if-ne p1, v3, :cond_0

    const-string v0, "typo"

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    const-string v2, "setBodyCss"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zhihu/android/base/widget/ZHWebView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    return-void

    .line 251
    :cond_0
    const-string v0, "typo dark"

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/webkit/a$a;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    .line 66
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/zhihu/android/app/webkit/a;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    const-string v1, "autoScrollToTop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/base/widget/ZHWebView;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public canLoadImage()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/a$a;->getContentType()I

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFontSize()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    invoke-virtual {v0}, Lcom/zhihu/android/base/widget/ZHWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/af;->g(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    const-string v0, "18px"

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "16px"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "18px"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "20px"

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "22px"

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFooterSpaceHeight()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/a$a;->getFooterSpaceHeight()I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderSpaceHeight()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/a$a;->getHeaderSpaceHeight()I

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitialScrollY()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/a$a;->getInitialScrollY()I

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/a$a;->getScreenHeight()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x280

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u56fe\u7247: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/facebook/drawee/a/a/a;->c()Lcom/facebook/imagepipeline/d/c;

    move-result-object v0

    .line 127
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1, p0}, Lcom/facebook/imagepipeline/d/c;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/zhihu/android/app/webkit/a$3;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/webkit/a$3;-><init>(Lcom/zhihu/android/app/webkit/a;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/facebook/common/c/a;->a()Lcom/facebook/common/c/a;

    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/b;->a(Lcom/facebook/datasource/d;Ljava/util/concurrent/Executor;)V

    .line 147
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    invoke-interface {v0, p1}, Lcom/zhihu/android/app/webkit/a$a;->a(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onBodyClicked()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    new-instance v1, Lcom/zhihu/android/app/webkit/a$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/webkit/a$4;-><init>(Lcom/zhihu/android/app/webkit/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHWebView;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onDocumentReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/webkit/a;->c:Z

    .line 87
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    invoke-virtual {v1}, Lcom/zhihu/android/base/widget/ZHWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/webkit/a;->a(I)V

    .line 88
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    new-instance v1, Lcom/zhihu/android/app/webkit/a$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/webkit/a$1;-><init>(Lcom/zhihu/android/app/webkit/a;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHWebView;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public openImage(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 105
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 106
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->a:Lcom/zhihu/android/app/webkit/a$a;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    new-instance v2, Lcom/zhihu/android/app/webkit/a$2;

    invoke-direct {v2, p0, v1, p2}, Lcom/zhihu/android/app/webkit/a$2;-><init>(Lcom/zhihu/android/app/webkit/a;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v2}, Lcom/zhihu/android/base/widget/ZHWebView;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_1
    return-void
.end method

.method public readCachedImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lcom/zhihu/android/app/util/j;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
