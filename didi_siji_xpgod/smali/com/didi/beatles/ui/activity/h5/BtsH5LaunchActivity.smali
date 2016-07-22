.class public Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsH5LaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 23
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->finish()V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, scheme:Ljava/lang/String;
    const v3, 0x7f0b0064

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->finish()V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, host:Ljava/lang/String;
    const v3, 0x7f0b0063

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->finish()V

    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p0, v2}, Lcom/didi/frame/MainActivity;->startActivityFromH5(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 45
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsH5LaunchActivity;->finish()V

    goto :goto_0
.end method
