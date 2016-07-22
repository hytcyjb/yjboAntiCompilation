.class final Lcom/didi/common/helper/ExitHelper$1;
.super Ljava/lang/Object;
.source "ExitHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/ExitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/ExitHelper;->access$002(Z)Z

    .line 40
    return-void
.end method
