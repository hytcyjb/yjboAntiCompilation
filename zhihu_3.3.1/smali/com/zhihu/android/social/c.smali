.class public abstract Lcom/zhihu/android/social/c;
.super Landroid/app/Activity;
.source "WXEntryBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/tencent/mm/sdk/g/b;


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/social/c;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/social/c;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mm/sdk/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/c;->b(Lcom/tencent/mm/sdk/d/a;)V

    .line 44
    return-void
.end method

.method public a(Lcom/tencent/mm/sdk/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/d/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/c;->b(Lcom/tencent/mm/sdk/d/b;)V

    .line 84
    :goto_1
    return-void

    .line 50
    :pswitch_0
    iget v0, p1, Lcom/tencent/mm/sdk/d/b;->a:I

    if-nez v0, :cond_1

    sget-object v1, Lcom/zhihu/android/social/utils/a;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/c$b;

    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    .line 52
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 53
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/zhihu/android/social/utils/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 55
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 56
    iget-object v0, p0, Lcom/zhihu/android/social/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 57
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/c$b;

    iget-object v1, p1, Lcom/tencent/mm/sdk/modelmsg/c$b;->e:Ljava/lang/String;

    new-instance v2, Lcom/zhihu/android/social/c$1;

    invoke-direct {v2, p0}, Lcom/zhihu/android/social/c$1;-><init>(Lcom/zhihu/android/social/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/social/e;->a(Ljava/lang/String;Lcom/zhihu/android/social/a/b;)V

    goto :goto_1

    .line 71
    :cond_1
    iget v0, p1, Lcom/tencent/mm/sdk/d/b;->a:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 72
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/social/e;->c:Lcom/zhihu/android/social/a/a;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/social/e;->c:Lcom/zhihu/android/social/a/a;

    invoke-interface {v0}, Lcom/zhihu/android/social/a/a;->r()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/social/e;->c:Lcom/zhihu/android/social/a/a;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/social/e;->c:Lcom/zhihu/android/social/a/a;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p1, Lcom/tencent/mm/sdk/d/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/social/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract b(Lcom/tencent/mm/sdk/d/a;)V
.end method

.method public abstract b(Lcom/tencent/mm/sdk/d/b;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/social/c;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)V

    .line 31
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/zhihu/android/social/c;->onBackPressed()V

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/c;->setIntent(Landroid/content/Intent;)V

    .line 38
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    invoke-direct {p0}, Lcom/zhihu/android/social/c;->a()V

    .line 104
    return-void
.end method
