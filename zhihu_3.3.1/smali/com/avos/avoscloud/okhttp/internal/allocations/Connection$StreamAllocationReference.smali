.class final Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;
.super Ljava/lang/ref/WeakReference;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamAllocationReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 210
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->name:Ljava/lang/String;

    .line 211
    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public rescind()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->rescinded:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->access$602(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;Z)Z

    .line 218
    :cond_0
    return-void
.end method
