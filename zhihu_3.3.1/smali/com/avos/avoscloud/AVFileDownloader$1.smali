.class Lcom/avos/avoscloud/AVFileDownloader$1;
.super Ljava/lang/Object;
.source "AVFileDownloader.java"

# interfaces
.implements Lcom/avos/avoscloud/PaasClient$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFileDownloader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFileDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$1;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(JJZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader$1;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const-wide/16 v4, 0x62

    mul-long/2addr v4, p1

    long-to-float v3, v4

    long-to-float v4, p3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->access$000(Lcom/avos/avoscloud/AVFileDownloader;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
