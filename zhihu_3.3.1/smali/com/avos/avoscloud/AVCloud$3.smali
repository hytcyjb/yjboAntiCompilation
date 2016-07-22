.class final Lcom/avos/avoscloud/AVCloud$3;
.super Lcom/avos/avoscloud/FunctionCallback;
.source "AVCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCloud;->rpcFunction(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FunctionCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$reference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/avos/avoscloud/AVCloud$3;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/avos/avoscloud/FunctionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$3;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
