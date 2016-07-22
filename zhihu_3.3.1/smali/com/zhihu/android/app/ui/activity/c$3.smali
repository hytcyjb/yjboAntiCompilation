.class Lcom/zhihu/android/app/ui/activity/c$3;
.super Ljava/lang/Object;
.source "SocialOauthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/c;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/zhihu/android/app/ui/activity/c;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/c;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/c$3;->b:Lcom/zhihu/android/app/ui/activity/c;

    iput-object p2, p0, Lcom/zhihu/android/app/ui/activity/c$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$3;->b:Lcom/zhihu/android/app/ui/activity/c;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c$3;->a:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/at;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
