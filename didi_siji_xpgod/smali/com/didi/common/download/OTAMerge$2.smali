.class Lcom/didi/common/download/OTAMerge$2;
.super Ljava/lang/Object;
.source "OTAMerge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/download/OTAMerge;->mergePatch2Apk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/OTAMerge;

.field final synthetic val$patchName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/download/OTAMerge;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    iput-object p2, p0, Lcom/didi/common/download/OTAMerge$2;->val$patchName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$200(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->val$patchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/OTAMerge$2;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/OTAMerge;->access$100(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 95
    return-void
.end method
