.class Lcom/didi/frame/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/didi/common/download/UpdateHelper$UpdatedListener;


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
    .line 299
    iput-object p1, p0, Lcom/didi/frame/MainActivity$4;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 1

    .prologue
    .line 304
    const-string v0, "appVersion4="

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/didi/common/base/DidiApp;->checkAppVersion()V

    .line 306
    return-void
.end method
