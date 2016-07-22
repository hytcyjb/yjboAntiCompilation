.class public Lcom/zhihu/android/app/ui/activity/WeChatOauthActivity;
.super Lcom/zhihu/android/app/ui/activity/c;
.source "WeChatOauthActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/c;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p0}, Lcom/zhihu/android/app/util/ba;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    const v0, 0x7f0900d5

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    .line 38
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/WeChatOauthActivity;->finish()V

    goto :goto_0
.end method

.method protected q()Lcom/zhihu/android/api/util/GrantType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    return-object v0
.end method
