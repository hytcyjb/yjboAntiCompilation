.class Lcom/didi/common/ui/fragment/SplashFragment$3;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/SplashFragment;->getCommonSentence()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SplashFragment$3;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCommonVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/fragment/SplashFragment$3$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/SplashFragment$3$1;-><init>(Lcom/didi/common/ui/fragment/SplashFragment$3;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getIMCommonList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 118
    return-void
.end method
