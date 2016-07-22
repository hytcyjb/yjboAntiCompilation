.class public Lcom/instabug/library/network/b/b;
.super Ljava/lang/Object;
.source "SSLUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/network/b/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static a(Landroid/content/Context;Lcom/instabug/library/network/b/b$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instabug/library/network/b/c;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/network/b/c;-><init>(Landroid/content/Context;Lcom/instabug/library/network/b/b$a;)V

    const-string v2, "InstabugNetInit"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method
