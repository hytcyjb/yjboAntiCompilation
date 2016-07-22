.class Lcom/didi/common/base/DidiApp$1;
.super Ljava/lang/Thread;
.source "DidiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/base/DidiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/base/DidiApp;


# direct methods
.method constructor <init>(Lcom/didi/common/base/DidiApp;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/common/base/DidiApp$1;->this$0:Lcom/didi/common/base/DidiApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/didi/common/base/DidiApp$1;->this$0:Lcom/didi/common/base/DidiApp;

    invoke-virtual {v0}, Lcom/didi/common/base/DidiApp;->initSounds()V

    .line 127
    iget-object v0, p0, Lcom/didi/common/base/DidiApp$1;->this$0:Lcom/didi/common/base/DidiApp;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z
    invoke-static {v0, v1}, Lcom/didi/common/base/DidiApp;->access$002(Lcom/didi/common/base/DidiApp;Z)Z

    .line 128
    return-void
.end method
