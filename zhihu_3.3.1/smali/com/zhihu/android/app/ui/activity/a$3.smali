.class Lcom/zhihu/android/app/ui/activity/a$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ui/activity/a;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/a;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/a$3;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a$3;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/a;->m()V

    .line 392
    return-void
.end method
