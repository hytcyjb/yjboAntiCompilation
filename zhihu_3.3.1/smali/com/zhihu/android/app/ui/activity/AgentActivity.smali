.class public Lcom/zhihu/android/app/ui/activity/AgentActivity;
.super Landroid/app/Activity;
.source "AgentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/activity/AgentActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_agent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/util/Agent;

    .line 44
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhihu/android/app/util/Agent;->a()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/zhihu/android/app/util/Agent;->a()Landroid/content/Intent;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/zhihu/android/app/util/Agent;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/zhihu/android/app/util/Agent;->b()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/zhihu/android/app/ui/activity/AgentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
