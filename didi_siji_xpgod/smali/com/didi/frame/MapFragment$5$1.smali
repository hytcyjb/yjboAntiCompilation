.class Lcom/didi/frame/MapFragment$5$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment$5;->onFail(Lcom/didi/common/model/AddressList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/MapFragment$5;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/didi/frame/MapFragment$5$1;->this$1:Lcom/didi/frame/MapFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$102(I)I

    .line 412
    return-void
.end method
