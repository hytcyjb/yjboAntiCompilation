.class Lcom/didi/frame/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->checkStatus()V
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
    .line 955
    iput-object p1, p0, Lcom/didi/frame/MainActivity$11;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 959
    invoke-static {}, Lcom/didi/common/util/LocUtil;->getInstance()Lcom/didi/common/util/LocUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/util/LocUtil;->checkNetStatus()V

    .line 960
    return-void
.end method
