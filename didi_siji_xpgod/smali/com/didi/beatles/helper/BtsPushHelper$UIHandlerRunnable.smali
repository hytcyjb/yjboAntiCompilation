.class public Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;
.super Ljava/lang/Object;
.source "BtsPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/helper/BtsPushHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandlerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;,"Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;->t:Ljava/lang/Object;

    .line 327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 332
    .local p0, this:Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;,"Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable<TT;>;"
    return-void
.end method
