.class Lcom/didi/common/model/SNSConfig$1$1;
.super Ljava/lang/Object;
.source "SNSConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/model/SNSConfig$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/model/SNSConfig$1;


# direct methods
.method constructor <init>(Lcom/didi/common/model/SNSConfig$1;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/common/model/SNSConfig$1$1;->this$1:Lcom/didi/common/model/SNSConfig$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$1$1;->this$1:Lcom/didi/common/model/SNSConfig$1;

    iget-object v0, v0, Lcom/didi/common/model/SNSConfig$1;->this$0:Lcom/didi/common/model/SNSConfig;

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$1$1;->this$1:Lcom/didi/common/model/SNSConfig$1;

    iget-object v1, v1, Lcom/didi/common/model/SNSConfig$1;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    #calls: Lcom/didi/common/model/SNSConfig;->loadPictureFromNet(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    invoke-static {v0, v1}, Lcom/didi/common/model/SNSConfig;->access$100(Lcom/didi/common/model/SNSConfig;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    .line 95
    return-void
.end method
