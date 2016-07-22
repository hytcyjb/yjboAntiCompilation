.class Lcom/didi/common/download/OTAMerge$1;
.super Landroid/os/Handler;
.source "OTAMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/OTAMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/OTAMerge;


# direct methods
.method constructor <init>(Lcom/didi/common/download/OTAMerge;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    :sswitch_0
    return-void

    .line 47
    :sswitch_1
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/download/OTAMerge;->access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/download/OTAMerge$1;->this$0:Lcom/didi/common/download/OTAMerge;

    #getter for: Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/download/OTAMerge;->access$100(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/download/OTAMerge$1$1;

    invoke-direct {v1, p0}, Lcom/didi/common/download/OTAMerge$1$1;-><init>(Lcom/didi/common/download/OTAMerge$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        -0x2711 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method
