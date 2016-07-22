.class Lcom/didi/frame/MainActivity$9;
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
    .line 812
    iput-object p1, p0, Lcom/didi/frame/MainActivity$9;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showMyOrdersFragment()V

    .line 817
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity$9;->cancel()V

    .line 818
    return-void
.end method
