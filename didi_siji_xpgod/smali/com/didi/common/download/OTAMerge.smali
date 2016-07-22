.class public Lcom/didi/common/download/OTAMerge;
.super Ljava/lang/Object;
.source "OTAMerge.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/download/OTAMerge$MergeAPK;
    }
.end annotation


# static fields
.field private static final GET_APP_SUC:I = 0x0

.field private static final INSTALL_APK:I = 0x1

.field public static final MERGE_APP_ERR:I = -0x2711


# instance fields
.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private newApk:Ljava/lang/String;

.field private oldApkName:Ljava/lang/String;

.field private patchName:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "oldApk"
    .parameter "patchName"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/didi/common/download/OTAMerge;->patchName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "didi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/didi/common/download/OTAMerge$1;

    invoke-direct {v0, p0}, Lcom/didi/common/download/OTAMerge$1;-><init>(Lcom/didi/common/download/OTAMerge;)V

    iput-object v0, p0, Lcom/didi/common/download/OTAMerge;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/didi/common/download/OTAMerge;->patchName:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/didi/common/download/OTAMerge$MergeAPK;

    invoke-direct {v0, p0}, Lcom/didi/common/download/OTAMerge$MergeAPK;-><init>(Lcom/didi/common/download/OTAMerge;)V

    invoke-virtual {v0}, Lcom/didi/common/download/OTAMerge$MergeAPK;->start()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/download/OTAMerge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/OTAMerge;->patchName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/download/OTAMerge;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/didi/common/download/OTAMerge;->mergePatch2Apk(Ljava/lang/String;)V

    return-void
.end method

.method private mergePatch2Apk(Ljava/lang/String;)V
    .locals 6
    .parameter "patchName"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 85
    new-instance v0, Lcom/sdu/didi/lib/DiffBiz;

    invoke-direct {v0}, Lcom/sdu/didi/lib/DiffBiz;-><init>()V

    .line 87
    .local v0, mBusiness:Lcom/sdu/didi/lib/DiffBiz;
    const-string v1, "false"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/download/OTAMerge;->oldApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/download/OTAMerge;->newApk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/didi/common/download/OTAMerge;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sdu/didi/lib/DiffBiz;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/didi/common/download/OTAMerge$2;

    invoke-direct {v2, p0, p1}, Lcom/didi/common/download/OTAMerge$2;-><init>(Lcom/didi/common/download/OTAMerge;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
