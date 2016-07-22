.class Lcom/zhihu/android/social/c$1;
.super Ljava/lang/Object;
.source "WXEntryBaseActivity.java"

# interfaces
.implements Lcom/zhihu/android/social/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/social/c;->a(Lcom/tencent/mm/sdk/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/social/c;


# direct methods
.method constructor <init>(Lcom/zhihu/android/social/c;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zhihu/android/social/c$1;->a:Lcom/zhihu/android/social/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhihu/android/social/c$1;->a:Lcom/zhihu/android/social/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/social/c$1;->a:Lcom/zhihu/android/social/c;

    invoke-virtual {v0}, Lcom/zhihu/android/social/c;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/social/c$1;->a:Lcom/zhihu/android/social/c;

    invoke-static {v0}, Lcom/zhihu/android/social/c;->a(Lcom/zhihu/android/social/c;)V

    .line 67
    iget-object v0, p0, Lcom/zhihu/android/social/c$1;->a:Lcom/zhihu/android/social/c;

    invoke-virtual {v0}, Lcom/zhihu/android/social/c;->finish()V

    goto :goto_0
.end method
