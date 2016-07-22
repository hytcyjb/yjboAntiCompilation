.class Lcom/zhihu/android/app/ui/activity/c$2;
.super Ljava/lang/Object;
.source "SocialOauthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/c;->a(Lcom/zhihu/android/social/utils/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/social/utils/c;

.field final synthetic b:Lcom/zhihu/android/app/ui/activity/c;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/c;Lcom/zhihu/android/social/utils/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/c$2;->b:Lcom/zhihu/android/app/ui/activity/c;

    iput-object p2, p0, Lcom/zhihu/android/app/ui/activity/c$2;->a:Lcom/zhihu/android/social/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$2;->b:Lcom/zhihu/android/app/ui/activity/c;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c$2;->a:Lcom/zhihu/android/social/utils/c;

    invoke-virtual {v1}, Lcom/zhihu/android/social/utils/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method
