.class Lcom/didi/common/crash/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/crash/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/crash/CrashHandler;


# direct methods
.method constructor <init>(Lcom/didi/common/crash/CrashHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/common/crash/CrashHandler$1;->this$0:Lcom/didi/common/crash/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 34
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 35
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 36
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 37
    return-void
.end method
