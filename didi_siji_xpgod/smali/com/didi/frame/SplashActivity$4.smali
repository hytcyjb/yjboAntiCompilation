.class Lcom/didi/frame/SplashActivity$4;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/SplashActivity;->getCommonSentence()V
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
    .line 169
    iput-object p1, p0, Lcom/didi/frame/SplashActivity$4;->this$0:Lcom/didi/frame/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCommonVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/frame/SplashActivity$4$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/SplashActivity$4$1;-><init>(Lcom/didi/frame/SplashActivity$4;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getIMCommonList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 188
    return-void
.end method
