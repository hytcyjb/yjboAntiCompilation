.class Lcom/didi/frame/SplashActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/SplashActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/didi/frame/SplashActivity$1;->this$0:Lcom/didi/frame/SplashActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V

    .line 79
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/frame/SplashActivity$1;->this$0:Lcom/didi/frame/SplashActivity;

    #calls: Lcom/didi/frame/SplashActivity;->initCheck()V
    invoke-static {v0}, Lcom/didi/frame/SplashActivity;->access$000(Lcom/didi/frame/SplashActivity;)V

    .line 74
    return-void
.end method
