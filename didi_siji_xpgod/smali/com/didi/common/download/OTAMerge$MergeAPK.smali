.class Lcom/didi/common/download/OTAMerge$MergeAPK;
.super Ljava/lang/Thread;
.source "OTAMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/OTAMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeAPK"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/OTAMerge;


# direct methods
.method constructor <init>(Lcom/didi/common/download/OTAMerge;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/common/download/OTAMerge$MergeAPK;->this$0:Lcom/didi/common/download/OTAMerge;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 105
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge$MergeAPK;->this$0:Lcom/didi/common/download/OTAMerge;

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$MergeAPK;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->patchName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$300(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/common/download/OTAMerge;->mergePatch2Apk(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/common/download/OTAMerge;->access$400(Lcom/didi/common/download/OTAMerge;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge$MergeAPK;->this$0:Lcom/didi/common/download/OTAMerge;

    iget-object v0, v0, Lcom/didi/common/download/OTAMerge;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method
