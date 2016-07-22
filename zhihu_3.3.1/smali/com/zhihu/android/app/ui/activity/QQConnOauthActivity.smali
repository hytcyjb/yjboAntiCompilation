.class public Lcom/zhihu/android/app/ui/activity/QQConnOauthActivity;
.super Lcom/zhihu/android/app/ui/activity/c;
.source "QQConnOauthActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p1, p2, p3}, Lcom/zhihu/android/app/util/ag;->a(IILandroid/content/Intent;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/zhihu/android/app/ui/activity/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/c;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0, p0}, Lcom/zhihu/android/app/util/ag;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 34
    return-void
.end method

.method protected q()Lcom/zhihu/android/api/util/GrantType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    return-object v0
.end method
