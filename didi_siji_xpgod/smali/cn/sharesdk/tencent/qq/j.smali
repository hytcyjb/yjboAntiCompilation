.class Lcn/sharesdk/tencent/qq/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/sharesdk/tencent/qq/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/i;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/j;->f:Lcn/sharesdk/tencent/qq/i;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/j;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/j;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->f:Lcn/sharesdk/tencent/qq/i;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/i;->a(Lcn/sharesdk/tencent/qq/i;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->b:Landroid/os/Bundle;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->f:Lcn/sharesdk/tencent/qq/i;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/i;->b(Lcn/sharesdk/tencent/qq/i;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/utils/b;->a(Landroid/content/Context;)Lcn/sharesdk/framework/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/b;->r()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->b:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->f:Lcn/sharesdk/tencent/qq/i;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/j;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcn/sharesdk/tencent/qq/i;->a(Lcn/sharesdk/tencent/qq/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/sharesdk/framework/utils/e;->c(Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0
.end method
