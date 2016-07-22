.class Lcom/didi/frame/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->startAppWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/didi/frame/MainActivity$5;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 449
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->startAppWatcherIfNeed()V

    .line 450
    return-void
.end method
