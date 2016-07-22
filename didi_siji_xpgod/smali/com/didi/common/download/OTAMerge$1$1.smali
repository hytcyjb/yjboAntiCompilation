.class Lcom/didi/common/download/OTAMerge$1$1;
.super Ljava/lang/Object;
.source "OTAMerge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/download/OTAMerge$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/download/OTAMerge$1;


# direct methods
.method constructor <init>(Lcom/didi/common/download/OTAMerge$1;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/common/download/OTAMerge$1$1;->this$1:Lcom/didi/common/download/OTAMerge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$1$1;->this$1:Lcom/didi/common/download/OTAMerge$1;

    iget-object v1, v1, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$1$1;->this$1:Lcom/didi/common/download/OTAMerge$1;

    iget-object v1, v1, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$200(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$1$1;->this$1:Lcom/didi/common/download/OTAMerge$1;

    iget-object v1, v1, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$1$1;->this$1:Lcom/didi/common/download/OTAMerge$1;

    iget-object v1, v1, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->patchName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$300(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 54
    return-void
.end method
