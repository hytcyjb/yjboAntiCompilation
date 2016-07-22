.class Lcom/zhihu/android/app/ui/activity/c$4;
.super Ljava/lang/Object;
.source "SocialOauthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/c;->a(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/zhihu/android/app/ui/activity/c;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/c;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/c$4;->c:Lcom/zhihu/android/app/ui/activity/c;

    iput p2, p0, Lcom/zhihu/android/app/ui/activity/c$4;->a:I

    iput-object p3, p0, Lcom/zhihu/android/app/ui/activity/c$4;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 276
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/c$4;->c:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v2}, Lcom/zhihu/android/app/ui/activity/c;->d(Lcom/zhihu/android/app/ui/activity/c;)I

    move-result v2

    iget v3, p0, Lcom/zhihu/android/app/ui/activity/c$4;->a:I

    iget-object v4, p0, Lcom/zhihu/android/app/ui/activity/c$4;->b:Landroid/content/Intent;

    invoke-direct {v1, v2, v3, v4}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 277
    return-void
.end method
