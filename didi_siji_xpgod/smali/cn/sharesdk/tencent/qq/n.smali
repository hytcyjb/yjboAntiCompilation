.class Lcn/sharesdk/tencent/qq/n;
.super Lcn/sharesdk/framework/m;


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qq/k;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/k;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-direct {p0}, Lcn/sharesdk/framework/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_1

    const-string v0, "wtloginmqq://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/k;->e(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "use_login_button"

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/k;->f(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/m;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/k;->b(Lcn/sharesdk/tencent/qq/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qq/k;->a(Lcn/sharesdk/tencent/qq/k;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/m;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "http://www.myapp.com/down/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v1, v0}, Lcn/sharesdk/tencent/qq/k;->a(Lcn/sharesdk/tencent/qq/k;Z)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    const-string v1, "wtloginmqq://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v1}, Lcn/sharesdk/tencent/qq/k;->c(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "use_login_button"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/n;->a:Lcn/sharesdk/tencent/qq/k;

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/k;->d(Lcn/sharesdk/tencent/qq/k;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
