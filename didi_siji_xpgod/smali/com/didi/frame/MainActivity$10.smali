.class Lcom/didi/frame/MainActivity$10;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->onPause()V
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
    .line 911
    iput-object p1, p0, Lcom/didi/frame/MainActivity$10;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Lcom/didi/common/util/TraceLog;->saveLog()V

    .line 916
    iget-object v0, p0, Lcom/didi/frame/MainActivity$10;->this$0:Lcom/didi/frame/MainActivity;

    #calls: Lcom/didi/frame/MainActivity;->uploadTraceLog()V
    invoke-static {v0}, Lcom/didi/frame/MainActivity;->access$200(Lcom/didi/frame/MainActivity;)V

    .line 917
    return-void
.end method
