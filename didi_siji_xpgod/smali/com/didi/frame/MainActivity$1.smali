.class Lcom/didi/frame/MainActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/MainActivity;
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
    .line 183
    iput-object p1, p0, Lcom/didi/frame/MainActivity$1;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 192
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V

    .line 193
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/didi/frame/MainActivity$1;->this$0:Lcom/didi/frame/MainActivity;

    #calls: Lcom/didi/frame/MainActivity;->initData()V
    invoke-static {v0}, Lcom/didi/frame/MainActivity;->access$000(Lcom/didi/frame/MainActivity;)V

    .line 188
    return-void
.end method
